select * from wallets;

create table withdrawals(
 withdrawal_id serial primary key,
 merchant_id int,
 amount numeric (12, 2) not null,
 status varchar(20) not null check(status in ('pending', 'success', 'failed')),
 channel varchar(20) not null check (channel in ('bank_transfer','wallet', 'card')),
 to_bank text not null,
 created_at timestamp not null default current_timestamp,
 
 constraint fk_withdrawal
 foreign key (merchant_id)
 references merchants (merchant_id)
);

select * from merchants;

insert into merchants( merchant_name)
values
('alphaphix_store');
insert into merchants( merchant_name)
values
('cydelight_catering'),
('Hope_fashion_store'),
('sylvia_resturant'),
('grace_supermarket');
select * from transactions;
ALTER TABLE transactions
Add constraint check_transaction_status
check(status in ('successful', 'failed'));

--- creating the trigger+function combo  to block failed transaction from going into the transaction table but going into the failed attempt table

CREATE OR REPLACE FUNCTION block_failed_transactions()
RETURNS TRIGGER AS $$
BEGIN
    IF new.status <> 'success' THEN
        INSERT INTO failed_attempts (
            merchant_id, amount, channel, error_message
        ) VALUES (
            NEW.merchant_id, NEW.amount, NEW.channel, 'Transaction marked as ' || NEW.status
        );

        RETURN NULL;  -- Prevent the insert from going into transactions table
    END IF;

    RETURN NEW;
END;
$$ language plpgsql;

CREATE TRIGGER trg_block_failed_transactions
BEFORE INSERT ON transactions
FOR EACH ROW
EXECUTE FUNCTION block_failed_transactions();


--- creating the trigger+function combo to handle when transactions are successful
CREATE OR REPLACE FUNCTION handle_successful_transaction()
RETURNS TRIGGER AS $$
DECLARE
    current_balance NUMERIC;
    new_balance NUMERIC;
BEGIN
    -- Get current balance
    SELECT wallet_balance INTO current_balance
    FROM merchants
    WHERE merchant_id = NEW.merchant_id;

    -- Calculate new balance
    new_balance := current_balance + NEW.amount;

    -- Update merchant wallet
    UPDATE merchants
    SET wallet_balance = new_balance
    WHERE merchant_id = NEW.merchant_id;

    -- Insert into wallets table
    INSERT INTO wallets (
        merchant_id, transaction_type, amount, balance_after, transaction_id, source
    ) VALUES (
        NEW.merchant_id, 'credit', NEW.amount, new_balance, NEW.transaction_id, 'payment'
    );

--- insert into the expected amount table

    INSERT INTO expected_settlements (
        transaction_id,
        expected_amount,
        expected_date
    ) VALUES (
        NEW.transaction_id,
        NEW.amount,
        CURRENT_DATE + INTERVAL '1 day' ); --- settle the next day
    RETURN NULL;
END;
$$ Language plpgsql;



CREATE TRIGGER trg_handle_successful_transaction
AFTER INSERT ON transactions
FOR EACH ROW
EXECUTE FUNCTION handle_successful_transaction();





--- creating the trigger+function combo to handle when transactions are inserted but this insert failed as succesful transaction  and failled transaction was going into the transactions table 

CREATE OR REPLACE FUNCTION handle_transaction()
returns trigger as $$
declare
current_balance numeric;
new_balance numeric;
Begin
 if new.status <> 'success' then
 insert into failed_attempts (
 merchant_id, amount, channel, error_message
 ) values (
          new.merchant_id, new.amount,new.channel, 'Transaction marked as' ||  new.status
 );
 return null;
 end if;
 --- transaction is succesful,proceed to get the merchants current balance
 select wallet_balance into  current_balance
 from merchants
 where merchant_id = new.merchant_id;

 --- calculate new balance
 new_balance := current_balance + new.amount;

 --- update the merchants balance
 update merchants
 set wallet_balance = new_balance
 where merchant_id = new.merchant_id;
 
--- insert into wallet_transactions as a credit
insert into wallets(merchant_id, transaction_type, amount, balance_after,transaction_id, source)
values (new.merchant_id, 'credit', new.amount, new_balance, new.transaction_id, 'payment');
    );


--- allow transaction to go into transaction table
return new;
END;
$$ LANGUAGE plpgsql;

create trigger trigger_on_transaction
after insert on transactions
for each row
execute function handle_transaction();


insert into transactions(merchant_id, amount, channel, status)
values
(3, 6000, 'bank_transfer', 'success');

insert into transactions(merchant_id, amount, channel, status)
values
(1, 4000, 'wallet', 'failed');

delete from transactions where transaction_id in (22);

select * from transactions;
DROP TRIGGER IF EXISTS trg_handle_successful_transaction on transactions;


select * from merchants;

---- creating a function to handle when a merchant makes a withdrawal

CREATE OR REPLACE FUNCTION process_withdrawal()
RETURNS TRIGGER AS $$
DECLARE
    current_balance NUMERIC;
    new_balance NUMERIC;
BEGIN
    -- Only run this logic if the withdrawal is marked as 'successful'
    IF NEW.status = 'success' THEN

        -- Get the merchant's current balance
        SELECT wallet_balance INTO current_balance
        FROM merchants
        WHERE merchant_id = NEW.merchant_id;

        -- Check if they have enough money to withdraw
        IF current_balance < NEW.amount THEN
            RAISE EXCEPTION 'Insufficient balance for merchant %', NEW.merchant_id;
        END IF;

        --  Calculate new balance after withdrawing
        new_balance := current_balance - NEW.amount;

        -- Update the merchant's amount in the merchants table
        UPDATE merchants
        SET wallet_balance = new_balance
        WHERE merchant_id = NEW.merchant_id;

        -- Record this withdrawal in the wallet_transactions table
        INSERT INTO wallets (
            merchant_id,
            transaction_type,
            amount,
            balance_after,
            transaction_id,
            source
         
        ) VALUES (
            NEW.merchant_id,
            'debit',
            NEW.amount,
            new_balance,
            NULL,
            'merchant_withdrawal'
            
        );
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_process_withdrawal
AFTER INSERT ON withdrawals
FOR EACH ROW
EXECUTE FUNCTION process_withdrawal();



insert into withdrawals(merchant_id, amount, status, channel, to_bank)
values
(2, 500, 'success', 'bank_transfer', 'UBA');


select * from withdrawals

DROP TRIGGER IF EXISTS trigger_process_withdrawal on withdrawals




