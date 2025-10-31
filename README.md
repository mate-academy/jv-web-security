# Taxi Service - Web Security Implementation

A secure web application for managing a taxi service, featuring user authentication, session management, and role-based access control. This project demonstrates implementing web security using Java Servlets, JSP, and session-based authentication.

## 📋 Table of Contents

- [Features](#features)
- [Architecture](#architecture)
- [Technologies](#technologies)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Database Setup](#database-setup)
- [Running the Application](#running-the-application)
- [Project Structure](#project-structure)
- [Security Implementation](#security-implementation)
- [API Endpoints](#api-endpoints)

## ✨ Features

### Authentication & Authorization
- **Session-based Authentication**: Secure login/logout functionality using HttpSession
- **Authentication Filter**: Protects endpoints and redirects unauthorized users to login page
- **User Registration**: New drivers can register with login credentials
- **Persistent Sessions**: User sessions are maintained across requests

### Business Functionality
- **Driver Management**: Complete CRUD operations for driver entities
- **Car Management**: Create, read, update, and delete car records
- **Manufacturer Management**: Manage car manufacturer information
- **Personal Dashboard**: Authenticated drivers can view their assigned cars
- **Driver-Car Association**: Link drivers to specific vehicles

## 🏗️ Architecture

The application follows a **three-layer architecture** pattern:

```
┌─────────────────┐
│  Presentation   │  ← JSP Views + Controllers (Servlets)
├─────────────────┤
│    Business     │  ← Services (Business Logic)
├─────────────────┤
│   Data Access   │  ← DAOs (Database Operations)
└─────────────────┘
```

### Design Patterns

- **MVC (Model-View-Controller)**: Separates concerns between data, presentation, and control logic
- **DAO (Data Access Object)**: Abstracts database operations
- **Dependency Injection**: Custom DI framework for managing object dependencies
- **Front Controller Pattern**: AuthenticationFilter intercepts all requests
- **Singleton Pattern**: Injector and service instances

## 🛠️ Technologies

| Category | Technology | Version |
|----------|-----------|---------|
| **Language** | Java | 11 |
| **Build Tool** | Maven | - |
| **Database** | MySQL | 8.0.22 |
| **Web Framework** | Java Servlets | 4.0.1 |
| **View Technology** | JSP + JSTL | 1.2 |
| **Application Server** | Apache Tomcat | 9.x |

## 📦 Prerequisites

Before running this application, ensure you have:

- **Java Development Kit (JDK) 11** or higher
- **Apache Maven 3.6+**
- **MySQL 8.0+** database server
- **Apache Tomcat 9.x** application server
- **IDE** (IntelliJ IDEA, Eclipse, or similar) - recommended

## 🚀 Installation

1. **Clone the repository**
```bash
git clone <repository-url>
cd jv-web-security
```

2. **Configure Database Connection**

Edit the `mate.util.ConnectionUtil` class with your MySQL credentials:
```java
private static final String URL = "jdbc:mysql://localhost:3306/taxi";
private static final String USERNAME = "your_username";
private static final String PASSWORD = "your_password";
private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
```

3. **Build the Project**
```bash
mvn clean install
```

## 💾 Database Setup

1. **Create the Database Schema**

Open MySQL Workbench and execute the script located at:
```
src/main/resources/init_db.sql
```

This will create:
- `taxi` database schema
- `drivers` table (with login/password fields)
- `cars` table
- `manufacturers` table
- `cars_drivers` junction table (many-to-many relationship)

2. **Database Schema Overview**

```sql
drivers (id, name, login, password, license_number, is_deleted)
cars (id, model, manufacturer_id, is_deleted)
manufacturers (id, name, country, is_deleted)
cars_drivers (car_id, driver_id)
```

## ▶️ Running the Application

### Using Maven Tomcat Plugin

```bash
mvn tomcat7:run
```

### Using IDE (IntelliJ IDEA)

1. Configure Tomcat server in Run/Debug Configurations
2. Set deployment artifact: `web-security:war exploded`
3. Click Run

The application will be available at: **http://localhost:8080**

## 📁 Project Structure

```
src/main/java/mate/
├── controller/          # Servlet controllers (HTTP request handlers)
│   ├── car/            # Car-related controllers
│   ├── driver/         # Driver-related controllers
│   ├── manufacturer/   # Manufacturer-related controllers
│   ├── LoginController.java
│   ├── LogoutController.java
│   └── GetMyCurrentCarsController.java
├── dao/                # Data Access Objects (database layer)
│   ├── CarDao.java
│   ├── DriverDao.java
│   └── ManufacturerDao.java
├── service/            # Business logic layer
│   ├── AuthenticationService.java
│   ├── CarService.java
│   ├── DriverService.java
│   └── ManufacturerService.java
├── model/              # Entity classes
│   ├── Car.java
│   ├── Driver.java
│   └── Manufacturer.java
├── web/filter/         # Servlet filters
│   └── AuthenticationFilter.java
├── lib/                # Custom dependency injection framework
│   ├── Injector.java
│   ├── @Inject
│   ├── @Dao
│   └── @Service
├── util/               # Utility classes
│   └── ConnectionUtil.java
└── exception/          # Custom exceptions
    ├── AuthenticationException.java
    └── DataProcessingException.java

src/main/webapp/
├── WEB-INF/
│   └── views/          # JSP view templates
│       ├── cars/
│       ├── drivers/
│       ├── manufacturers/
│       ├── login.jsp
│       └── index.jsp
└── web.xml             # Servlet configuration
```

## 🔒 Security Implementation

### 1. Authentication Service

```java
public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationException;
}
```

- Validates user credentials against database
- Retrieves driver by login using `findByLogin()` method
- Compares provided password with stored password
- Throws `AuthenticationException` on failed authentication

### 2. Authentication Filter

**Purpose**: Intercepts all HTTP requests and enforces authentication

**How it works:**
```java
@Override
public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) {
    // Check if URL is in allowed list (login, registration)
    // Check if user has valid session with userId
    // Allow request OR redirect to login page
}
```

**Protected Resources**: All endpoints except:
- `/login` - Login page
- `/drivers/add` - Driver registration

### 3. Session Management

After successful authentication:
```java
HttpSession session = req.getSession();
session.setAttribute("userId", driver.getId());
session.setAttribute("userName", driver.getName());
```

The session maintains user state across requests without re-authentication.

### 4. Password Storage

⚠️ **Note**: Current implementation stores passwords in plain text. For production systems, implement:
- Password hashing (BCrypt, Argon2, PBKDF2)
- Salting
- Secure password policies

## 🌐 API Endpoints

### Public Endpoints (No Authentication Required)

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/login` | Display login page |
| POST | `/login` | Process login credentials |
| GET | `/drivers/add` | Display registration form |
| POST | `/drivers/add` | Create new driver account |

### Protected Endpoints (Authentication Required)

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/index` | Home page |
| POST | `/logout` | Logout and invalidate session |
| GET | `/drivers/cars/` | View current driver's cars |
| GET | `/drivers/` | List all drivers |
| POST | `/drivers/delete` | Delete a driver |
| GET | `/cars/` | List all cars |
| GET | `/cars/add` | Display add car form |
| POST | `/cars/add` | Create new car |
| POST | `/cars/delete` | Delete a car |
| POST | `/cars/drivers/add` | Assign driver to car |
| GET | `/manufacturers/` | List all manufacturers |
| GET | `/manufacturers/add` | Display add manufacturer form |
| POST | `/manufacturers/add` | Create new manufacturer |
| POST | `/manufacturers/delete` | Delete a manufacturer |

## 🔧 Custom Dependency Injection

The project implements a lightweight DI framework:

```java
@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;
    
    // Dependencies automatically injected by Injector
}
```

**Features:**
- Scans classes in specified package
- Identifies `@Service` and `@Dao` annotated classes
- Resolves `@Inject` dependencies recursively
- Maintains singleton instances

## 📝 Best Practices Implemented

✅ **Separation of Concerns**: Clear separation between layers (Controller → Service → DAO)  
✅ **DRY Principle**: Generic interfaces reduce code duplication  
✅ **Exception Handling**: Custom exceptions for different error scenarios  
✅ **Resource Management**: Try-with-resources for database connections  
✅ **Soft Delete**: Records are marked as deleted rather than physically removed  
✅ **Stateless Services**: Business logic doesn't maintain state  
✅ **Single Responsibility**: Each class has one clear purpose  

## 🔐 Security Considerations

### Current Implementation
- ✅ Session-based authentication
- ✅ Filter-based authorization
- ✅ SQL parameterized queries (prevents SQL injection)
- ✅ Centralized authentication logic

### Production Recommendations
- ⚠️ Implement password hashing (BCrypt)
- ⚠️ Add HTTPS/TLS encryption
- ⚠️ Implement CSRF protection tokens
- ⚠️ Add rate limiting for login attempts
- ⚠️ Implement session timeout
- ⚠️ Add input validation and sanitization
- ⚠️ Use prepared statements consistently
- ⚠️ Implement logging and monitoring

## 📚 Learning Outcomes

This project demonstrates:
- Session-based authentication implementation
- Servlet filters for request interception
- Three-layer architecture in Java web applications
- Custom dependency injection framework
- MVC pattern with JSP and Servlets
- Database connection management
- JDBC for database operations
- Web application security fundamentals

## 🐛 Troubleshooting

**Database Connection Issues**
- Verify MySQL server is running
- Check credentials in `ConnectionUtil`
- Ensure `taxi` database exists

**Authentication Filter Not Working**
- Check `web.xml` filter mapping: `/*`
- Verify filter initialization in servlet container logs

**Dependencies Not Injecting**
- Ensure classes are annotated with `@Service` or `@Dao`
- Check fields have `@Inject` annotation
- Verify package scanning path in Injector


## 🤝 Contributing

This is an educational project. Feel free to fork and experiment with improvements.

---

**Author**: Vitalii Martynov  
**Project Type**: Educational Web Application  
**Focus**: Web Security & Session Management
