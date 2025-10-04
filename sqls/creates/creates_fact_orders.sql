DROP TABLE IF EXISTS orders_fact;

CREATE TABLE IF NOT EXISTS orders_fact (
    order_id        INT,
    customer_id     INT,
    order_date      DATE,
    amount          DECIMAL(10,2),
    status          STRING,
    shipped_flag    INT,
    processed_at    TIMESTAMP
);

