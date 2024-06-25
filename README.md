# 📚 Library Management System

## Description

Library Management System is a web application built with Ruby on Rails that allows users to manage a collection of books, borrow them, and view their borrowing history. Users can create accounts, log in, and perform various actions such as borrowing books, returning them, and viewing their borrowing history.

## Features

- 🔐 User authentication (registration, login, logout)
- 📖 Book management (create, read, update, delete)
- 📚 Borrow management (borrow, return)
- 📜 Borrowing history for users
- 🔍 Search functionality for books

## Prerequisites

- 🛠 Ruby 3.3.3
- 🛠 Rails 7.1.3
- 🛠 SQLite3

## Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/yourusername/library-management-system.git
    cd library-management-system
    ```

2. Install the required gems:

    ```sh
    bundle install
    ```

## Database Setup

1. Create and migrate the database:

    ```sh
    rails db:create
    rails db:migrate
    ```

2. (Optional) Seed the database with sample data:

    ```sh
    rails db:seed
    ```

## Usage

1. Start the Rails server:

    ```sh
    rails server
    ```

2. Open your web browser and navigate to `http://localhost:3000`.

3. Register a new account or log in with existing credentials.

4. Create and browse the list of books, borrow them, and view your borrowing history.

## Running Tests

To run the test suite, execute the following command:

```sh
rails test
