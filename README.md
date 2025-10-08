# 🎟️ Event Ticketing and Performance System

This project is a database-driven system designed to manage users, events, and ticket sales efficiently. It allows event organizers to keep track of ticket purchases, event schedules, and attendee details using a PostgreSQL database hosted on Supabase.

<!-- TABLE OF CONTENTS -->
# 📗 Table of Contents

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

# 📖 [DATA TOOLS FINAL PROJECT ] <a name="about-project"></a>
This is a an Event Ticketing and Performance System is designed to handle the core operations of an event management platform.It includes modules for event creation,performer assignment, and ticket sales tracking.Developed using Supabase (PostgreSQL), the project highlights the fundamentals of database schema design, foreign key relationships, and data querying.


## 🛠 Built With <a name="built-with"></a>
| Component | Description |
|------------|-------------|
| **Database** | PostgreSQL (via Supabase) |
| **Platform** | Supabase Cloud |
| **Version Control** | Git + GitHub |
| **Documentation** | Md.files(Github) |
| **Tools** | Supabase SQL Editor,|
### 🧰 Tech StackT for Event Ticketing and Performance System
<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">Supabase</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">SQL</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

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

b)SQL commands like:

SELECT * FROM events;
UPDATE events SET venue = 'New Venue' WHERE event_id = 1;

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

SQL example:

SELECT performers.name, events.event_name
FROM performers
JOIN events ON performers.event_id = events.event_id;

💰 3. Ticket Tracking & Sales Reporting

This feature ;

1.Enables the management of ticket purchases and event revenue analysis.
Functions:

2.Store ticket information (ticket type, quantity, price, and linked event).

3.Track how many tickets were sold per event.

4.Generate SQL-based revenue reports for performance review.

Supported By:

a)Tickets table

SQL example:

SELECT event_id, SUM(quantity * price) AS total_revenue
FROM tickets
GROUP BY event_id;


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> No live demo yet — this project runs in [Supabase](https://supabase.com/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

Follow these steps to set up and run the project locally or on Supabase.


### Prerequisites
Before you begin, make sure you have:

1.A Supabase account

2.Basic understanding of SQL and relational databases

3.A GitHub account to clone and push your work

4.A text editor such as VS Code (optional, for editing .sql and .md files)

### Setup
1.Go to Supabase

2.Create a new project named Event Ticketing and Performance System.

3.Open the SQL Editor from your Supabase dashboard.

4.Copy and paste the contents of your schema.sql file (from this repository).

5.Click Run to execute the script — this will create your tables and insert sample data.

6.Once successful, go to the Table Editor in Supabase to confirm that the tables (events, performers, and tickets) have been created.

<!--
Example commands:

```sh
  cd my-folder
  git clone git@github.com:myaccount/my-project.git
```
--->

### Install

Install this project with:

<!--
Example command:

```sh
  cd my-project
  gem install
```
--->

### Usage
You can now run queries to test and view your data On SQL
-- View all events
SELECT * FROM events;

-- View all performers linked to their events
SELECT performers.performer_name, events.event_name 
FROM performers
JOIN events ON performers.event_id = events.event_id;

-- View ticket sales per event
SELECT event_id, SUM(quantity * price) AS total_revenue
FROM tickets
GROUP BY event_id;

You should see results appear in the Supabase SQL Editor output panel.

### Run tests

To confirm your setup works:

Try inserting a new performer or event.

Run a JOIN query to check relationships between tables.

Ensure that foreign keys correctly link tickets and events.

Example:

INSERT INTO events (event_name, venue, event_date, ticket_price)
VALUES ('Tech Fest 2025', 'Nairobi Arena', '2025-11-10', 1500);

To run tests, run the following command:


### Deployment

Once confirmed, push your project files to GitHub:

git add .
git commit -m "Initial Supabase Event Ticketing project setup"
git push origin main


Then share your repository link or create a pull request to your class repository.

<!--
Example:

```sh

```
 -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Author1**

- GitHub: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

👤 **Author2**

- GitHub: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **[new_feature_1]**
- [ ] **[new_feature_2]**
- [ ] **[new_feature_3]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **[Question_1]**

  - [Answer_1]

- **[Question_2]**

  - [Answer_2]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
