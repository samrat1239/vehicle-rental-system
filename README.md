Vehicle Rental Management System - SQL Queries
A collection of SQL queries demonstrating key database concepts for a vehicle rental management system.

Project Overview
This project contains SQL queries for managing a vehicle rental database with three main tables:

Users - Customer and admin information
Vehicles - Fleet inventory and availability
Bookings - Rental transactions
Query Descriptions
Query 1: Booking Information with Customer and Vehicle Details
Concept: INNER JOIN

Retrieves complete booking records by joining bookings with user and vehicle information. Useful for generating booking reports with readable customer and vehicle names.

Query 2: Vehicles That Have Never Been Booked
Concept: NOT EXISTS

Identifies vehicles in the fleet that have no booking history. Helps management track underutilized inventory.

Query 3: Available Vehicles by Type
Concept: WHERE Clause

Filters vehicles based on availability status and type (e.g., cars, bikes, trucks). Enables customers to search for available vehicles of their preferred category.

Query 4: Vehicles with Multiple Bookings
Concept: GROUP BY and HAVING

Analyzes booking frequency to find vehicles with more than 2 bookings. Identifies popular vehicles for business insights and fleet management.

Database Schema
Users Table: user_id (Primary Key), name, email, phone, role

Vehicles Table: vehicle_id (Primary Key), name, type, model, registration_number, rental_price, status

Bookings Table: booking_id (Primary Key), user_id (FK), vehicle_id (FK), start_date, end_date, status, total_cost
