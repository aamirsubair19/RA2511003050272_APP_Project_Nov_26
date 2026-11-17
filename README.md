# Smart Hospital Management System

## Course Details
- Course ID: 21CSC203P
- Course Name:  ADVANCED PROGRAMMING PRACTICE

- ## Team Members
- | Name          | Register Number | Department | Section | Academic Year |
  |---------------|-----------------|------------|---------|---------------|
  | AAMIR SUBAIR  | RA2511003050272 | CSE        | E       | 2025-2029     |
  | AADESH S      | RA2511003050298 | CSE        | E       | 2025-2029     |
  | L NANTHAGOPAL | RA2511003050283 | CSE        | E       | 2025-2029     |
  | PRAVEEN S     | RA2511003050245 | CSE        | E       | 2025-2029     |

  ## Mentor Details
- Mentor Name: Dr. S. Shargunam 
- Designation: Subject Handling Faculty
- 

## Project Overview

The Smart Hospital Management System is developed using Java Swing and MySQL. It provides a graphical interface for different hospital departments and uses JDBC to connect the application to the database.

## Technologies Used

- **Programming Language:** Java
- **GUI Framework:** Java Swing
- **Database:** MySQL
- **Database Connectivity:** JDBC
- **Build Tool:** Apache Maven
- **IDE:** IntelliJ IDEA

## Modules

1. **Reception Module** – Patient registration and appointment management.
2. **Doctor Module** – Patient consultation and prescription management.
3. **Pharmacy Module** – Medicine and prescription management.
4. **Ambulance Module** – Emergency case management.
5. **Casualty Module** – Emergency patient monitoring.

## Project Structure

```text
SmartHospitalManagementSystem/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── dao/
│   │   │   ├── gui/
│   │   │   ├── model/
│   │   │   ├── service/
│   │   │   └── util/
│   │   └── resources/
│   └── test/
├── pom.xml
└── README.md
```

## Database Configuration

The application uses a MySQL database named `hospital_management`.

Make sure MySQL Server is installed and running, and that the required database and tables are available before launching the application.

Database connection settings are maintained in the application's database connection class.

## Running the Project

1. Clone or download this repository.
2. Open the project in IntelliJ IDEA.
3. Allow Maven to load the project dependencies.
4. Start the MySQL server.
5. Ensure the `hospital_management` database is configured.
6. Run `LoginFrame.java` to launch the application.

## Project Modules

The application brings together five major hospital departments to support coordinated hospital operations through a centralized desktop system.

## Developer

Developed as an academic project using Java, Swing, JDBC, MySQL, and Maven.
