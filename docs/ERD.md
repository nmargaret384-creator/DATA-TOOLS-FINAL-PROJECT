Entity Relationship Diagram (ERD)
---
Event Ticketing & Performance System
---
Text-Based ERD Description

USERS ||--o{ TICKETS }o--|| EVENTS

## Entity Relationship Diagram (ERD)
**Event Ticketing and Performance System**

### Text-Based ERD Description
USERS ||--o{ TICKETS }o--|| EVENTS
```

**USERS:**
- user_id (PK)
- full_name
- email (UNIQUE)
- phone
- created_at

**EVENTS:**
- event_id (PK)
- event_name
- event_date
- location
- price
- created_at

**TICKETS:**
- ticket_id (PK)
- user_id (FK → users.user_id)
- event_id (FK → events.event_id)
- purchase_date
- seat_number
```

---

### ASCII Diagram
```

┌────────────────┐              ┌────────────────┐              ┌────────────────┐
│     USERS      │              │    TICKETS     │              │     EVENTS     │
├────────────────┤              ├────────────────┤              ├────────────────┤
│ user_id (PK)   │◄─────────────┤ ticket_id (PK) │─────────────►│ event_id (PK)  │
│ full_name      │              │ user_id (FK)   │              │ event_name     │
│ email (UQ)     │              │ event_id (FK)  │              │ event_date     │
│ phone          │              │ purchase_date  │              │ location       │
│ created_at     │              │ seat_number    │              │ price          │
└────────────────┘              └────────────────┘              │ created_at     │
                                                                 └────────────────┘
```
---

Relationship Details

1. Users to Tickets (One-to-Many)

Cardinality: 1:N

Description: One user can purchase multiple tickets.

Foreign Key: tickets.user_id → users.user_id

Delete Rule: CASCADE

2. Events to Tickets (One-to-Many)

Cardinality: 1:N

Description: One event can have many tickets sold.

Foreign Key: tickets.event_id → events.event_id

Delete Rule: CASCADE

Business Rules

Each user must have a unique email address.

Each ticket must belong to a valid user and event.

Ticket purchases automatically record the purchase date.

Events must have a valid date and location.

When a user or event is deleted, all related tickets should also be removed (cascade delete).

Views and Derived Data

tickets_summary View:

Joins users, events, and tickets tables.

Displays full name, event name, seat number, and purchase date.

Useful for event attendance tracking and sales reporting.

✅ This ERD demonstrates:

3 tables minimum (users, events, tickets)

Foreign key relationships (user_id, event_id in tickets)

Proper normalization and referential integrity

Business and data rules clearly defined

