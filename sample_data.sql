-- Sample Data for Regions
INSERT INTO Regions (region_name, latitude, longitude) VALUES
('North Region', 40.7128, -74.0060),
('South Region', 34.0522, -118.2437),
('East Region', 41.8781, -87.6298),
('West Region', 37.7749, -122.4194);

-- Sample Data for Products
INSERT INTO Products (product_name, category) VALUES
('Laptop', 'Electronics'),
('Headphones', 'Electronics'),
('Coffee Maker', 'Appliances'),
('Refrigerator', 'Appliances'),
('Office Chair', 'Furniture');

-- Sample Data for Sales
INSERT INTO Sales (region_id, product_name, quantity, sale_amount, sale_date) VALUES
(1, 'Laptop', 10, 12000.00, '2024-06-01'),
(2, 'Headphones', 25, 3750.00, '2024-06-02'),
(3, 'Coffee Maker', 15, 2250.00, '2024-06-03'),
(4, 'Refrigerator', 5, 5000.00, '2024-06-04'),
(1, 'Office Chair', 12, 2400.00, '2024-06-05');
