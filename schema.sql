Event Ticketing and Performance System — Database Schema
-- Created for Data Tools Final Project using Supabase (PostgreSQL)

-- Drop existing tables
DROP TABLE IF EXISTS tickets CASCADE;
DROP TABLE IF EXISTS events CASCADE;
DROP TABLE IF EXISTS users CASCADE;

-- Create users table
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  phone VARCHAR(15),
  created_at TIMESTAMP DEFAULT NOW()
);

-- Create events table
CREATE TABLE events (
  event_id SERIAL PRIMARY KEY,
  event_name VARCHAR(100) NOT NULL,
  event_date DATE NOT NULL,
  location VARCHAR(100),
  price DECIMAL(10,2),
  created_at TIMESTAMP DEFAULT NOW()
);

-- Create tickets table
CREATE TABLE tickets (
  ticket_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
  event_id INT REFERENCES events(event_id) ON DELETE CASCADE,
  purchase_date TIMESTAMP DEFAULT NOW(),
  seat_number VARCHAR(10)
);

-- Insert sample users
INSERT INTO users (full_name, email, phone) VALUES
('Alice Johnson', 'alice@example.com', '0712345678'),
('Brian Mwangi', 'brian@example.com', '0723456789'),
('Clara Wambui', 'clara@example.com', '0734567890'),
('David Otieno', 'david@example.com', '0745678901'),
('Eunice Njeri', 'eunice@example.com', '0756789012');

-- Insert sample events
INSERT INTO events (event_name, event_date, location, price) VALUES
('Nairobi Music Festival', '2025-11-20', 'Kasarani Stadium', 2500.00),
('Tech Innovators Summit', '2025-12-05', 'KICC Nairobi', 3000.00),
('Comedy Night Live', '2025-10-25', 'Sarit Centre', 1500.00),
('Food & Wine Expo', '2025-11-10', 'Westgate Mall', 2000.00),
('Cultural Dance Fiesta', '2025-12-15', 'Uhuru Gardens', 1800.00);

-- Insert sample tickets
INSERT INTO tickets (user_id, event_id, seat_number) VALUES
(1, 1, 'A12'),
(2, 3, 'B10'),
(3, 2, 'C05'),
(4, 5, 'A02'),
(5, 4, 'B15');


-- Example queries for testing
--Query 1
SELECT * FROM users;
SELECT * FROM events;
SELECT * FROM tickets;


--querry 2 Show all data in the events table
SELECT * FROM events;
SELECT event_name, price FROM events;
SELECT * FROM events
WHERE price > 2000;
SELECT * FROM events
ORDER BY event_date ASC;
SELECT COUNT(*) AS total_events FROM events;

--querry 3 Add one test event
INSERT INTO events (event_name, event_date, location, price)
VALUES ('Test Event', '2025-10-15', 'Nairobi', 1000.00);
SELECT * FROM events;




