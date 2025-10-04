-- Update: Order 102 (was SHIPPED, now RETURNED with different amount)
INSERT INTO raw_orders VALUES
(102, 2, '2025-09-02', 470.00, 'RETURNED', '2025-11-01 09:30:00');

-- Update: Order 105 (was NEW, now SHIPPED)
INSERT INTO raw_orders VALUES
(105, 1, '2025-09-05', 300.00, 'SHIPPED', '2025-11-02 12:00:00');

-- New Order in November
INSERT INTO raw_orders VALUES
(131, 7, '2025-11-03', 650.00, 'NEW', '2025-11-03 14:10:00');

-- Another new Order in November
INSERT INTO raw_orders VALUES
(132, 8, '2025-11-05', 800.00, 'PROCESSING', '2025-11-05 10:45:00');

-- Update: Order 120 (was CANCELLED, now SHIPPED)
INSERT INTO raw_orders VALUES
(120, 2, '2025-10-07', 300.00, 'SHIPPED', '2025-11-06 17:20:00');
