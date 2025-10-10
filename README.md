# 🎟️ Event Ticketing and Performance System- Data Tools Project.

This project is a database-driven system designed to manage users, events, and ticket sales efficiently. It allows event organizers to keep track of ticket purchases, event schedules, and attendee details using a PostgreSQL database hosted on Supabase.

<!-- TABLE OF CONTENTS -->
# 📗 Table of Contents.

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->
ABOUT THE PROJECT 
# 🎟️ Event Ticketing and Performance System 

This is a an Event Ticketing and Performance System is designed to handle the core operations of an event management platform.It includes modules for event creation,performer assignment, and ticket sales tracking.Developed using Supabase (PostgreSQL), the project highlights the fundamentals of database schema design, foreign key relationships, and data querying.

## 🛠 Built With <a name="built-with"></a>

### 🧰 Tech StackT for Event Ticketing and Performance System
| Component | Description |
|------------|-------------|
| **Database** | PostgreSQL (via Supabase) |
| **Platform** | Supabase Cloud |
| **Version Control** | Git + GitHub |
| **Documentation** | Md.files(Github) |
| **Tools** | Supabase SQL Editor,|


<!-- Features -->

### Key Features <a name="key-features"></a>


- 🎫 1. EVENT MANAGEMENT.

This feature allows you to;

1.Create and manage all the key details of an event within the database.
Functions:

2.Store essential event data such as name, venue, date, and ticket price.

3.Update or delete events as needed using SQL commands.

4.Retrieve all events for reporting or listing purposes.
Supported By:

a)Events table

b)SQL commands


👨‍🎤 2. PERFORMER LINKING

This feature;

1.Manages all performers and links them to events through a foreign key relationship.
Functions:

2.Add new performers to the system (name, genre, contact info).

3.Associate performers with one or multiple events.

4.Retrieve all performers for a specific event.

Supported By:

a)Performers table

b)Foreign key relationship (event_id in performers → events.event_id)


💰 3. Ticket Tracking & Sales Reporting

This feature ;

1.Enables the management of ticket purchases and event revenue analysis.
Functions:

2.Store ticket information (ticket type, quantity, price, and linked event).

3.Track how many tickets were sold per event.

4.Generate SQL-based revenue reports for performance review.


<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> No live demo yet — this project runs in [Supabase](https://supabase.com/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

Follow these steps to set up and run the project locally or on Supabase.


### Prerequisites
Before you begin, make sure you have:

1.A Supabase account https://supabase.com


2.Basic understanding of SQL and relational databases

3.A GitHub account to clone and push your work as well as documentation 

4.A text editor such as VS Code (optional, for editing .sql and .md files)

### Setup
1.Go to Supabase

2.Create a new project named Event Ticketing and Performance System.

3.Open the SQL Editor from your Supabase dashboard.

4.Copy and paste the contents of your schema.sql file (from this repository).

5.Click Run to execute the script — this will create your tables and insert sample data.

6.Once successful, go to the Table Editor in Supabase to confirm that the tables (events, performers, and tickets) have been created.

DB SCHEMA.

•	The DB is made up of 3 tables. Eaach table has 5 entries.

•	To create the table, you will need a schema as shown below:
```sql

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

```
DATABASE TABLES

<img width="1452" height="530" alt="image" src="https://github.com/user-attachments/assets/04aef260-0f03-48b0-91cf-47fed4d7df3d" />

Each Specific table should look like this in Superbase;
Users table
<img width="1915" height="535" alt="image" src="https://github.com/user-attachments/assets/0013faa3-54df-4310-80ba-8ae49ed26001" />


Events Table
<img width="1915" height="514" alt="image" src="https://github.com/user-attachments/assets/20ce1400-64c3-4042-b67f-8601376cb8cd" />


Ticketing Table
<img width="1915" height="545" alt="image" src="https://github.com/user-attachments/assets/f5fd86c8-99c6-435c-a02b-371253b7031d" />


The ERD screenshot from Superbase looks like this;
<img width="1465" height="673" alt="image" src="https://github.com/user-attachments/assets/0ea20adc-bed1-4357-bd2c-559741f71250" />



### Install

Install this project with the following steps:

1.Clone this repository to your local machine:

git clone https://github.com/yourusername/event-ticketing-and-performance-system.git
cd event-ticketing-and-performance-system

2.Open Supabase and navigate to the SQL Editor.

3.Copy the contents of the file schema.sql from this repository.

4.Paste the SQL code into the Supabase SQL editor and click Run.

5.Once the script executes successfully, you’ll have three tables created:

a)Events

b)Performers

c)Tickets

6.Go to the Table Editor in Supabase to confirm your data has been inserted.

### Usage
You can now run queries to test and view your data is Correct 
Use this  queries to test
```sql
SELECT * FROM users;
SELECT * FROM events;
SELECT * FROM tickets;
```
```sql
-- Show all data in the events table
SELECT * FROM events;

-- Show only event names and prices
SELECT event_name, price FROM events;

-- Show events that cost more than 2000
SELECT * FROM events
WHERE price > 2000;

-- Show events sorted by date (oldest first)
SELECT * FROM events
ORDER BY event_date ASC;

-- Count how many events are in the table
SELECT COUNT(*) AS total_events FROM events;
```

```sql
-- Add one test event
INSERT INTO events (event_name, event_date, location, price)
VALUES ('Test Event', '2025-10-15', 'Nairobi', 1000.00);

-- Now display it
SELECT * FROM events;
```

You should see results appear in the Supabase SQL Editor output panel.

<img width="1820" height="667" alt="image" src="https://github.com/user-attachments/assets/a3aef9f8-36c3-48a3-a1b4-c8ebddf93fba" />

<img width="1920" height="530" alt="image" src="https://github.com/user-attachments/assets/44550f0b-0b2c-4f4d-80cd-9c6811640e1c" />

<img width="1911" height="800" alt="image" src="https://github.com/user-attachments/assets/103864c3-597b-415b-ae58-dec03a487742" />


### Deployment

Once confirmed, push your project files to GitHub:

Commit and push your files to your GitHub repository.

Include the following files:

schema.sql

README.md

data_dictionary.md

/docs/ERD.png

<!--
Example:

```sh

```
 -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Author1**

- GitHub: https://github.com/nmargaret384-creator
- LinkedIn: www.linkedin.com/in/wanjikunyambura
  


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

🎟️ Online Ticket Booking

 This feature will allow users to buy tickets directly through a web interface connected to the database.

📊 Event Analytics Dashboard 

Add visual insights such as total sales, top performers, and attendance reports.



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the issues page or submit a pull request to suggest improvements.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, please ⭐️ the repository and share it with your friends.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

My instructor and classmates for guidance and feedback during development.

Supabase for providing an easy-to-use PostgreSQL platform.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

Q1: Why are some INSERT queries failing?
A1: Check if your email or unique key already exists in the table. Each email must be unique.

Q2: Can I extend this database for real-world use?
A2: Yes! You can easily connect it with a web app or mobile frontend using Supabase APIs.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
