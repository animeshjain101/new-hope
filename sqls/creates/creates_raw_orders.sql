DROP TABLE raw_orders;

CREATE TABLE raw_orders (
    order_id        INT,
    customer_id     INT,
    order_date      DATE,
    amount          DECIMAL(10,2),
    status          STRING,
    last_updated    TIMESTAMP
);