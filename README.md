# G-Scores

G-Scores is a Ruby on Rails application that allows users to search for Vietnam National High School Exam scores using a registration number and view score statistics reports.

## Live Demo

https://g-scores-ip1j.onrender.com

## Features

### Search Scores

Users can enter a registration number to view detailed exam scores, including:

* Math
* Literature
* Foreign Language
* Physics
* Chemistry
* Biology
* History
* Geography
* Civic Education

### Reports

The application provides statistics for each subject based on four score levels:

* Score >= 8
* 6 <= Score < 8
* 4 <= Score < 6
* Score < 4

The report page also displays the Top 10 students in Group A (Math, Physics, Chemistry).

## Technologies Used

* Ruby 3.3
* Ruby on Rails 7
* PostgreSQL
* HTML / CSS
* Render

## Project Structure

The exam data is imported from the provided CSV file and stored in PostgreSQL.

Data import logic is implemented in:

```text
db/seeds.rb
```

Subject management is implemented using Object-Oriented Programming through the Subject service class.

## How to Run Locally

Clone the repository:

```bash
git clone https://github.com/MyiTran/webdev-intern-test.git
cd webdev-intern-test
```

Install dependencies:

```bash
bundle install
```

Create database:

```bash
rails db:create
```

Run migrations:

```bash
rails db:migrate
```

Import exam data:

```bash
rails db:seed
```

Start the server:

```bash
rails server
```

Open:

```text
http://localhost:3000
```

## Pages

### Search Scores

```text
/students
```

### Reports

```text
/reports
```

## Notes

* The application uses PostgreSQL as the database.
* The CSV dataset is located in the `dataset` folder.
* Score reports are generated dynamically from the database.
* The UI is responsive and works on desktop and mobile devices.

## Author

My Tran
