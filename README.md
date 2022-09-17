# 🚖🚖 TAXI-SERVICE 🚖🚖

## 💽 Description
This application is a very simplified version of the taxi service.

## ⚙️ Project structure
**The project has an N-Tier Architecture**
- Controller layer - allows to user to work with this application through browser.
- Service layer - is responsible for the business logic of the application.
- DAO layer - is responsible for communicating with the database.
- DB - вatabase based on MySQL server

## 📝 Features
- log in / log out forms
- authentication filter
- registration a new driver
- create, update, delete manufacturers, cars
- add driver to car / remove driver from car
- display list of all manufacturers, cars, drivers, cars of current driver

## 🖥️ Technologies
- Java 17
- Maven
- MySQL
- JDBC
- Tomcat
- JSP

## ⚡️Quickstart
1. Fork this repository
2. Copy link of project
3. Create new project from Version Control
4. Edit ConnectionUtil.class - set the necessary parameters
``` java
    private static final String URL = "URL";
    private static final String USERNAME = "USERNAME"; 
    private static final String PASSWORD = "PASSWORD";
    private static final String JDBC_DRIVER = "JDBC_DRIVER";
```
5. Create the necessary tables in your database using the file init_db.sql
6. Install [Tomcat] (https://tomcat.apache.org/download-90.cgi)
7. Add Tomcat server to configuration and Fix it.
8. Run project

## 👀 Example of parameters for ConnectionUtil.class
``` java
    private static final String URL = "jdbc:mysql://localhost:3306/taxi?useUnicode=true&serverTimezone=UTC";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "123456";
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
```