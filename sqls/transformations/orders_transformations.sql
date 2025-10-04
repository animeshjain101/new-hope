CREATE OR REPLACE TEMP VIEW v_orders_fact AS
SELECT
    order_id,
    customer_id,
    order_date,
    amount,
    status,
    CASE WHEN status = 'SHIPPED' THEN 1 ELSE 0 END AS shipped_flag,
    {current_date} AS processed_at
FROM stg_orders;

MERGE INTO orders_fact t
USING v_orders_fact s
ON t.order_id = s.order_id
WHEN MATCHED AND (
        t.status <> s.status
     OR t.amount <> s.amount
     OR t.customer_id <> s.customer_id
) THEN
  UPDATE SET
    customer_id  = s.customer_id,
    order_date   = s.order_date,
    amount       = s.amount,
    status       = s.status,
    shipped_flag = s.shipped_flag,
    processed_at = '{current_date}'
WHEN NOT MATCHED THEN
  INSERT (order_id, customer_id, order_date, amount, status, shipped_flag, processed_at)
  VALUES (s.order_id, s.customer_id, s.order_date, s.amount, s.status, s.shipped_flag, '{current_date}');