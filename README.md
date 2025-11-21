# Go Echo CRUD Framework

A robust RESTful API for User management built with Go (Golang) and the Echo framework. This project demonstrates best practices including Dependency Injection, Input Validation, and secure configuration management.

## 🚀 Features

- **CRUD Operations**: Full Create, Read, Update, Delete functionality for Users.
- **Architecture**: Clean code structure using **Dependency Injection** to manage database connections.
- **Validation**: Robust input validation using `go-playground/validator` to ensure data integrity.
- **Data Integrity**: Smart checks to prevent "ID burning" (auto-increment gaps) on failed unique constraint inserts.
- **Configuration**: Environment-based configuration using `.env` files.
- **Database**: MySQL integration with `database/sql`.

## 🛠️ Tech Stack

- **Language**: Go (Golang)
- **Framework**: [Echo v4](https://echo.labstack.com/) - High performance, extensible, minimalist Go web framework.
- **Database**: MySQL
- **Validation**: [go-playground/validator](https://github.com/go-playground/validator)
- **Config**: [godotenv](https://github.com/joho/godotenv)
- **API Testing**: [Bruno](https://www.usebruno.com/)

## 📂 Project Structure

```
.
├── config/         # Database configuration and connection logic
├── database/       # SQL migration files
├── golang-framework/ # Bruno API collection for testing
├── handlers/       # HTTP handlers (Controllers)
├── models/         # Data structures (Structs)
├── main.go         # Application entry point
├── .env            # Environment variables (Database credentials)
└── go.mod          # Go module definition
```

## ⚙️ Setup & Installation

1.  **Clone the repository**
    ```bash
    git clone https://github.com/ngurahpanjipalguna/golang-echo-framework.git
    cd golang-echo-framework
    ```

2.  **Database Setup**
    - Create a MySQL database.
    - Run the migration script located at `database/migration.sql` to create the table and insert sample data.

3.  **Configuration**
    - Create a `.env` file in the root directory (if not already present).
    - Add your database credentials:
      ```env
      DB_USER=root
      DB_PASSWORD=your_password
      DB_HOST=localhost
      DB_PORT=3306
      DB_NAME=db_crud_echo
      ```

4.  **Install Dependencies**
    ```bash
    go mod tidy
    ```

5.  **Run the Application**
    ```bash
    go run main.go
    ```
    The server will start at `http://localhost:8080`.

## 🔌 API Endpoints

| Method | Endpoint     | Description          |
| :----- | :----------- | :------------------- |
| GET    | `/users`     | Get all users        |
| GET    | `/users/:id` | Get user by ID       |
| POST   | `/users`     | Create a new user    |
| PUT    | `/users/:id` | Update a user by ID  |
| DELETE | `/users/:id` | Delete a user by ID  |

### Example Request Body (Create/Update)

```json
{
    "name": "Panji Palguna",
    "email": "panji@example.com",
    "age": 25
}
```

## 🧪 Testing with Bruno

This project includes a **Bruno** collection in the `golang-framework/` folder. You can open this folder using the Bruno app to test the API endpoints easily.
