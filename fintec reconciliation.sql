select * from merchants

insert into transactions(merchant_id, amount, channel, status) 
VALUES
(1, 4500.00, 'bank_transfer', 'success'),
(2, 3000.00, 'card' ,'failed');

insert into transactions(merchant_id, amount, channel, status) 
VALUES
(3, 78540.00, 'wallet', 'success'),
(3, 4890.25, 'wallet', 'success'),
(1, 1045.00, 'bank_transfer', 'failed'),
(5, 8722.10, 'card', 'success'),
(4, 2390.00, 'wallet', 'failed'),
(2, 1450.99, 'wallet', 'success'),
(1, 6500.00, 'bank_transfer', 'success'),
(3, 205.75, 'wallet', 'failed'),
(2, 7800.00, 'card', 'failed'),
(4, 9999.99, 'wallet', 'success'),
(5, 1100.00, 'bank_transfer', 'success'),
(2, 3150.50, 'card', 'success'),
(1, 7200.40, 'card', 'failed'),
(3, 5600.00, 'bank_transfer', 'failed'),
(5, 8000.00, 'wallet', 'failed'),
(4, 1300.65, 'card', 'success'),
(2, 4000.00, 'bank_transfer', 'success'),
(1, 2700.75, 'wallet', 'success'),
(3, 95034.00, 'card', 'failed'),
(5, 12003.00, 'bank_transfer', 'failed'),
(4, 500873, 'wallet', 'success');


insert into transactions(merchant_id, amount, channel, status) 
VALUES
(1, 10500.00, 'wallet', 'success'),
(2, 3200.75, 'bank_transfer', 'success'),
(3, 8750.00, 'card', 'success'),
(4, 4500.25, 'wallet', 'success'),
(5, 6200.00, 'bank_transfer', 'success'),
(2, 1399.99, 'card', 'success'),
(1, 7300.00, 'wallet', 'success'),
(3, 1880.55, 'bank_transfer', 'success'),
(4, 9999.99, 'wallet', 'success'),
(5, 1100.00, 'card', 'success'),
(3, 3000.40, 'bank_transfer', 'success'),
(1, 7700.80, 'card', 'success'),
(2, 6600.00, 'wallet', 'success'),
(4, 1420.00, 'bank_transfer', 'success'),
(5, 1210.99, 'wallet', 'success'),
(1, 5500.75, 'card', 'success'),
(3, 1020.00, 'bank_transfer', 'success'),
(2, 8800.65, 'wallet', 'success'),
(4, 4300.25, 'card', 'success'),
(5, 1240.00, 'wallet', 'success'),
(1, 5400.00, 'wallet', 'failed'),
(2, 2900.10, 'card', 'failed'),
(3, 11000.00, 'bank_transfer', 'failed'),
(4, 3000.00, 'wallet', 'failed'),
(5, 1010.99, 'card', 'failed'),
(1, 6200.75, 'bank_transfer', 'failed'),
(2, 7100.00, 'wallet', 'failed'),
(3, 3300.40, 'card', 'failed'),
(4, 8450.00, 'bank_transfer', 'failed'),
(5, 1200.00, 'wallet', 'failed');


INSERT INTO transactions (merchant_id, amount, channel, status)
VALUES
(2, 5200.00, 'wallet', 'success'),
(4, 1350.50, 'bank_transfer', 'success'),
(1, 8700.00, 'card', 'success'),
(3, 6100.25, 'wallet', 'success'),
(5, 3300.00, 'bank_transfer', 'success'),
(2, 7800.75, 'card', 'success'),
(1, 4100.00, 'wallet', 'success'),
(3, 1450.30, 'card', 'success'),
(4, 9250.00, 'bank_transfer', 'success'),
(5, 2700.90, 'wallet', 'success'),
(1, 1100.00, 'card', 'success'),
(2, 3050.55, 'bank_transfer', 'success'),
(3, 8450.00, 'wallet', 'success'),
(4, 6800.25, 'card', 'success'),
(5, 1090.00, 'wallet', 'success'),
(1, 4950.80, 'bank_transfer', 'success'),
(2, 1299.99, 'card', 'success'),
(3, 7200.00, 'wallet', 'success'),
(4, 4600.00, 'bank_transfer', 'success'),
(5, 3300.75, 'card', 'success'),
(2, 1180.00, 'wallet', 'success'),
(1, 2500.00, 'bank_transfer', 'success'),
(3, 3750.40, 'card', 'success'),
(4, 10800.00, 'wallet', 'success'),
(5, 1570.50, 'card', 'success'),
(2, 6400.00, 'bank_transfer', 'success'),
(3, 1125.99, 'wallet', 'success'),
(1, 7800.30, 'card', 'success'),
(4, 9200.00, 'bank_transfer', 'success'),
(5, 3150.00, 'wallet', 'success'),
(1, 4400.25, 'card', 'success'),
(2, 5000.00, 'wallet', 'success'),
(3, 1320.00, 'bank_transfer', 'success'),
(4, 8800.00, 'wallet', 'success'),
(5, 1999.99, 'card', 'success'),
(2, 3150.00, 'bank_transfer', 'success')

-- 15 failed
(1, 7600.00, 'wallet', 'failed'),
(3, 1320.25, 'card', 'failed'),
(4, 2200.00, 'bank_transfer', 'failed'),
(5, 1010.10, 'wallet', 'failed'),
(2, 4950.50, 'card', 'failed'),
(1, 3400.00, 'bank_transfer', 'failed'),
(3, 7900.00, 'wallet', 'failed'),
(4, 1450.60, 'card', 'failed'),
(5, 1600.00, 'bank_transfer', 'failed'),
(2, 7100.00, 'wallet', 'failed'),
(1, 1100.00, 'card', 'failed'),
(3, 5700.00, 'bank_transfer', 'failed'),
(4, 4300.99, 'wallet', 'failed'),
(5, 2600.25, 'card', 'failed'),
(2, 3890.00, 'card', 'failed');

select * from merchants
insert into merchants( merchant_name)
values
('chi_mini_mart'),
('blessing_ventures_pos');


INSERT INTO transactions (merchant_id, amount, channel, status) VALUES
(6, 12500.00, 'wallet', 'success'),
(7, 38000.50, 'bank_transfer', 'success'),
(8, 29500.75, 'card', 'failed'),
(9, 11000.00, 'wallet', 'success'),
(10, 43000.25, 'card', 'success'),
(11, 15990.99, 'bank_transfer', 'success'),
(12, 1420.00, 'wallet', 'failed'),
(6, 28900.00, 'card', 'success'),
(7, 50000.00, 'wallet', 'success'),
(8, 35000.00, 'bank_transfer', 'success'),
(9, 13200.00, 'card', 'success'),
(10, 4100.00, 'wallet', 'failed'),
(11, 28000.75, 'bank_transfer', 'success'),
(12, 16500.00, 'wallet', 'success'),
(6, 71000.00, 'card', 'success'),
(7, 14000.00, 'bank_transfer', 'success'),
(8, 950.00, 'wallet', 'failed'),
(9, 220000.00, 'wallet', 'success'),
(10, 47000.00, 'card', 'success'),
(11, 13000.00, 'wallet', 'success'),
(12, 18990.00, 'bank_transfer', 'success'),
(6, 30000.00, 'wallet', 'success'),
(7, 2700.45, 'card', 'failed'),
(8, 19500.00, 'bank_transfer', 'success'),
(9, 10000.00, 'wallet', 'success'),
(10, 32500.50, 'wallet', 'success'),
(11, 21500.25, 'card', 'success'),
(12, 1540.00, 'bank_transfer', 'failed'),
(6, 28880.88, 'card', 'success'),
(7, 43000, 'wallet', 'failed');



INSERT INTO withdrawals (merchant_id, amount, status, channel, to_bank) VALUES
(1, 8500.00, 'success', 'wallet', 'uba'),
(2, 4200.00, 'success', 'bank_transfer', 'access'),
(3, 1500.00, 'success', 'wallet', 'gtb'),
(4, 9900.00, 'success', 'card', 'palmpay'),
(5, 2500.00, 'failed', 'wallet', 'uba'),
(6, 800.00, 'success', 'wallet', 'kuda'),
(7, 200.00, 'success', 'bank_transfer', 'opay'),
(3, 2100.00, 'success', 'wallet', 'gtb'),
(9, 800.00, 'success', 'bank_transfer', 'access'),
(10, 300.00, 'success', 'card', 'kuda'),
(11, 850.00, 'success', 'wallet', 'palmpay'),
(12, 700.00, 'failed', 'bank_transfer', 'uba'),
(1, 9800.00, 'success', 'card', 'access'),
(2, 600.00, 'success', 'wallet', 'kuda'),
(3, 3700.00, 'success', 'bank_transfer', 'gtb'),
(4, 4300.00, 'success', 'wallet', 'palmpay'),
(5, 2200.00, 'success', 'wallet', 'opay'),
(6, 1990.00, 'success', 'card', 'uba'),
(7, 5100.00, 'success', 'bank_transfer', 'gtb'),
(8, 700.00, 'success', 'wallet', 'palmpay'),
(9, 910.00, 'success', 'wallet', 'kuda'),
(10, 400.00, 'failed', 'card', 'access'),
(11, 700.00, 'success', 'bank_transfer', 'opay'),
(12, 850.00, 'success', 'wallet', 'gtb'),
(1, 950.00, 'success', 'wallet', 'uba'),
(2, 8800.00, 'success', 'wallet', 'kuda'),
(3, 9999.00, 'success', 'bank_transfer', 'opay'),
(4, 7600.00, 'success', 'card', 'gtb'),
(5, 6300.00, 'success', 'wallet', 'palmpay'),
(6, 720.00, 'success', 'bank_transfer', 'access'),
(7, 1800.00, 'success', 'wallet', 'uba'),
(2, 2900.00, 'success', 'wallet', 'gtb'),
(9, 6200.00, 'success', 'wallet', 'palmpay'),
(10, 8150.00, 'success', 'bank_transfer', 'opay'),
(11, 540.00, 'success', 'wallet', 'kuda'),
(12, 700.00, 'success', 'card', 'access'),
(1, 5000.00, 'success', 'wallet', 'palmpay'),
(2, 2400.00, 'success', 'bank_transfer', 'gtb'),
(3, 350.00, 'success', 'wallet', 'uba'),
(4, 4400.00, 'success', 'wallet', 'opay'),
(5, 6700.00, 'success', 'card', 'kuda'),
(6, 3150.00, 'success', 'bank_transfer', 'gtb'),
(7, 7800.00, 'failed', 'wallet', 'access'),
(8, 880.00, 'success', 'wallet', 'palmpay'),
(9, 990.00, 'success', 'wallet', 'gtb'),
(10, 900.00, 'success', 'bank_transfer', 'uba'),
(11, 600.00, 'success', 'card', 'kuda'),
(12, 999.00, 'success', 'wallet', 'opay'),
(1, 8500.00, 'success', 'wallet', 'access'),
(2, 1000, 'success', 'bank_transfer', 'gtb');

select * from merchants
--- how many unique merchants are in the transactions table and what is the total amount received by each

select merchants.merchant_name, transactions.merchant_id, sum(amount) as total_amount
from transactions 
join merchants on transactions.merchant_id = merchants.merchant_id
group by transactions.merchant_id, merchants.merchant_name
order by total_amount desc;


--- which transactions status has the highest total amount

select status, count(*) as transaction_count, sum(amount) as total_amount
from transactions 
group by status
order by total_amount;


---which payment channel brings in the most money

select channel, sum(amount) as total_amount
from transactions
group by channel
order by total_amount desc;

--- which channel % has highest number of transactions

select channel, count(*) as transaction_count, 
round(count(*) * 100.0/sum(count(*)) over(),2) as percent_of_total
from transactions
group by channel
order by transaction_count desc;

-- what is the avg transaction per channel

select channel, count(*) as transaction_count,
sum(amount) as total_amount, avg(amount) as avg_transaction
from transactions 
group by channel
order by avg_transaction desc;

-- what merchant had the highest num of transaction

select merchant_id, count(*) as transaction_count, sum(amount)
from transactions 
group by merchant_id
order by transaction_count desc;

select * from failed_attempts

--- checking the % of failled/successful transactions
select status, txn_count, round(txn_count * 100/sum(txn_count) over(),2) as percent_of_total
from(  
select 'success' as status, count(*) as txn_count from transactions
union all
select 'transaction marked as failed' as status, count (*) 
as txn_count from failed_attempts) as combined;


--- what are our top merchant by volume and %

select *, round(total_amount *100 /sum(total_amount) over(), 2) as percent_of_total
from( 
select merchant_id, sum(amount) as total_amount
from transactions
group by merchant_id
order by total_amount desc limit 5) as sub;

select * from failed_attempts;

--- which channels have the highest failure rate
select *, round (transaction_count * 100/ sum(transaction_count)over(), 2) as percent_of_total
from( 
select channel, count(*) as transaction_count
from failed_attempts
group by channel
order by transaction_count desc) as sub

select * from expected_settlements

-- getting the expected settlement amount

select es.transaction_id,
t.merchant_id,
es.expected_date,
es.expected_amount
from expected_settlements es
join transactions t
on es.transaction_id = t.transaction_id
group by t.merchant_id, es.transaction_id, es.expected_date, es.expected_amount
order by es.expected_date;

--- creating a new column
alter table expected_settlements
add column merchant_id INT;

--- filling the merchant_id column from the transactions table

update expected_settlements es
set merchant_id = t.merchant_id
from transactions t
where es.transaction_id = t.transaction_id;

select * from actual_settlements

--- summary of expected amount to be paid from july 4th 2025

select merchant_id, sum(expected_amount) as expected_amount, count(*) as txn_count
from expected_settlements
where expected_date >= '2025-07-04'
group by merchant_id 
order by expected_amount desc;

4	633995.63	21
9	259820.00	8
6	188409.76	10
3	162875.08	21
10	134751.50	6
7	112201.00	6
1	111805.00	21
2	94765.46	23
11	86342.98	8
8	59950.00	4
5	53797.37	20
12	39039.00	4

insert into actual_settlements(merchant_id, amount_settled, transaction_count)
values
(4, 633995.63,	21),
(9,	219820.00,	7),
(6,	18409.76,	9),
(3,	162875.08,	21),
(10, 1347.50,	2),
(1,	111805.00,	21),
(2,	94765.46,	23),
(11,	96342.98,	8),
(8,	59950.00,	4),
(5,	73797.37,	20),
(12,	39039.00,	4)


--- creating a reconciliation query


-- summarizing expected settlements
WITH expected_summary AS (
    SELECT 
        merchant_id, 
        SUM(expected_amount) AS expected_amount, 
        COUNT(*) AS expected_txn_count,
        MAX(expected_date) AS expected_date
    FROM expected_settlements
    GROUP BY merchant_id
),

--summarizing actual settlements
actual_summary AS (
    SELECT 
        merchant_id, 
        SUM(amount_settled) AS amount_settled, 
        transaction_count as actual_txn_count,
        MAX(settlement_date) AS settlement_date
    FROM actual_settlements
    GROUP BY merchant_id, actual_txn_count
)

-- Final reconciliation query
SELECT 
    e.merchant_id,
    e.expected_amount,
    COALESCE(a.amount_settled, 0) AS actual_amount,
    e.expected_txn_count,
    COALESCE(a.actual_txn_count, 0) AS actual_txn_count,
    e.expected_date,
    a.settlement_date,

 -- Reconciliation status with multiple issues
    TRIM(BOTH ', ' FROM
        CASE WHEN a.amount_settled IS NULL THEN 'missing payment, ' ELSE '' END ||
        CASE WHEN a.amount_settled > e.expected_amount THEN 'overpayment, ' ELSE '' END ||
        CASE WHEN a.amount_settled < e.expected_amount THEN 'underpayment, ' ELSE '' END ||
        CASE WHEN a.settlement_date > e.expected_date THEN 'delayed payment, ' ELSE '' END ||
        CASE WHEN a.actual_txn_count IS DISTINCT FROM e.expected_txn_count THEN 'txn count mismatch, ' ELSE '' END
    ) AS reconciliation_issues

FROM expected_summary e
LEFT JOIN actual_summary a ON e.merchant_id = a.merchant_id
ORDER BY e.merchant_id;

