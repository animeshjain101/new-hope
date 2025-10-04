DROP TABLE IF EXISTS stg_orders;

CREATE TABLE IF NOT EXISTS stg_orders (
    order_id        INT,
    customer_id     INT,
    order_date      DATE,
    amount          DECIMAL(10,2),
    status          STRING,
    last_updated    TIMESTAMP
);

INSERT INTO stg_orders
SELECT *
FROM raw_orders r
WHERE r.last_updated BETWEEN '{load_start}' AND '{current_date}';