Data Dictionary - Event Ticketing and Performance System
---


## Overview

This data dictionary describes all tables, columns, and relationships in the Event Ticketing and Performance System database built using Supabase (PostgreSQL).
The system manages event details, performers, and ticket purchases by users.
The system helps manage events, attendees (users), and ticket sales efficiently. It ensures proper data relationships, scalability, and reporting capabilities for event performance tracking.

---
TABLES

A. 🧍 Users Table

Purpose: Stores personal information for users who buy or reserve tickets for events.

| Column Name | Data Type                | Constraints               | Description                     |
| ----------- | ------------------------ | ------------------------- | ------------------------------- |
| user_id     | SERIAL                   | PRIMARY KEY               | Unique identifier for each user |
| full_name   | VARCHAR(100)             | NOT NULL                  | User’s full name                |
| email       | VARCHAR(100)             | UNIQUE, NOT NULL          | User’s email address (unique)   |
| phone       | VARCHAR(20)              | -                         | User’s phone number             |
| created_at  | TIMESTAMP WITH TIME ZONE | DEFAULT CURRENT_TIMESTAMP | Record creation timestamp       |

---

B. 🎤 Events Table

Purpose: Stores details of all organized events, including location, price, and date.

| Column Name | Data Type                | Constraints               | Description                         |
| ----------- | ------------------------ | ------------------------- | ----------------------------------- |
| event_id    | SERIAL                   | PRIMARY KEY               | Unique identifier for each event    |
| event_name  | VARCHAR(100)             | NOT NULL                  | Name of the event                   |
| event_date  | DATE                     | NOT NULL                  | Date when the event will take place |
| location    | VARCHAR(100)             | -                         | Venue or place of the event         |
| price       | NUMERIC(10,2)            | -                         | Ticket price for the event          |
| created_at  | TIMESTAMP WITH TIME ZONE | DEFAULT CURRENT_TIMESTAMP | Record creation timestamp           |

---
C. 🎟️ Tickets Table

Purpose: Records every ticket transaction made by users for events.

| Column Name   | Data Type                | Constraints                                      | Description                                     |
| ------------- | ------------------------ | ------------------------------------------------ | ----------------------------------------------- |
| ticket_id     | SERIAL                   | PRIMARY KEY                                      | Unique identifier for each ticket               |
| user_id       | INTEGER                  | FOREIGN KEY → users(user_id) ON DELETE CASCADE   | References the user who bought the ticket       |
| event_id      | INTEGER                  | FOREIGN KEY → events(event_id) ON DELETE CASCADE | References the event for which ticket is bought |
| purchase_date | TIMESTAMP WITH TIME ZONE | DEFAULT CURRENT_TIMESTAMP                        | When the ticket was purchased                   |
| seat_number   | VARCHAR(10)              | -                                                | Optional seat or ticket number                  |


---

## Relationships

### Foreign Key Relationships

1. tickets.user_id → users.user_id

Type: Many-to-One

Description: Each ticket belongs to one user, but one user can have many tickets.

Action:

ON DELETE CASCADE: If a user is deleted, all their associated tickets are also removed.

2. tickets.event_id → events.event_id

Type: Many-to-One

Description: Each ticket is linked to one event, but an event can have many tickets.

Action:

ON DELETE CASCADE: If an event is deleted, all tickets for that event are automatically deleted.


---

## Views

event_sales_summary

Purpose: Displays total tickets sold and revenue per event.
| Column             | Description                              |
| ------------------ | ---------------------------------------- |
| event_name         | Event title                              |
| total_tickets_sold | Total number of tickets sold             |
| total_revenue      | Total income generated from ticket sales |

---

## Indexes

Performance Indexes

| Index Name           | Description                                |
| -------------------- | ------------------------------------------ |
| idx_users_email      | Speeds up searches by user email           |
| idx_events_date      | Optimizes queries by event date            |
| idx_tickets_user_id  | Speeds up joins between tickets and users  |
| idx_tickets_event_id | Speeds up joins between tickets and events |


---

## Sample Data Summary

Users: 5 records

Example: Grace Wambui, Kevin Otieno, Linda Muriithi

Each with unique email and phone numbers

Events: 5 records

Example: “Music Mania 2025”, “Tech Fest 2025”, “Comedy Nights”

Locations: Nairobi Arena, KICC, Kasarani Stadium

Ticket prices between KES 1000–3000

Tickets: 5 records

Each linking a user to an event

Various quantities purchased (1–3 per user)

Demonstrates event attendance and sales reporting

