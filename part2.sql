SELECT 
    u.name AS customer_name,
    v.vehicle_name,
    b.start_date,
    b.end_date,
    b.total_cost
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN vehicles v ON b.vehicle_id = v.vehicle_id;


SELECT *
FROM vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM bookings b
    WHERE b.vehicle_id = v.vehicle_id
);

SELECT *
FROM vehicles
WHERE availability_status = 'available'
AND vehicle_type = 'car';

SELECT 
    vehicle_id,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY vehicle_id
HAVING COUNT(*) > 2;