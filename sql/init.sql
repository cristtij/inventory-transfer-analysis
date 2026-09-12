DROP TABLE IF EXISTS parody_transfers_clean;
CREATE TABLE parody_transfers_clean (
    src,
    dst,
    order_date,
    expect_date,
    month,
    tx_num,
    cust_po,
    ux_tx_num,
    stg_status,
    qty,
    sku,
    item_desc,
    transfer_value,
    market_cost,
    avg_cost
);
-- import data here

-- Data cleanup
DELETE FROM parody_transfers_clean WHERE src IS NULL;
SELECT COUNT(*) from parody_transfers_clean;

-- Excel transferred dates as serial numbers; in order to read this in SQL properly for data analysis, we used two days day prior 
-- to excel's serial number start date-- due to Excel mistakenly treating 1900 as a leap year-- 
-- to begin the date function to add Excel's generated serial number to that date. For example, Excel calls 01-05-26 "46027." I had
-- SQL add this number of days to 1899-12-30 to find the true intended date of Excel.
UPDATE parody_transfers_clean
SET order_date = date('1899-12-30', '+' || order_date || ' days')
WHERE order_date IS NOT NULL;

UPDATE parody_transfers_clean
SET expect_date = date('1899-12-30', '+' || expect_date || ' days')
WHERE expect_date IS NOT NULL;

