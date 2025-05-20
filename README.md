# Social Media App

## Introduction

This is a simple social media application that allows users to post, follow each other, comment, like posts, and edit their personal profiles. The application uses Node.js, Express, and PostgreSQL for the backend, and React for the frontend.

---

## Project Structure

```
SocialMedia-App/
│
├── client/         # React Frontend
│   └── ...
├── server/         # Node.js/Express Backend
│   └── ...
├── README.md
└── ...
```

---

## Installation Guide

### 1. Clone the repository

```sh
git clone https://github.com/hung1306/SocialMedia-App
cd SocialMedia-App
```

### 2. Install dependencies for both server and client

```sh
cd server
npm install
cd ../client
npm install
```

### 3. Set up the database

- Install PostgreSQL (if not already installed).
- Create a new database.
- Import the [server/db.sql](server/db.sql) file into the newly created database:

```sh
psql -U postgres -d picker -f db.sql
```

- Update the database connection information in [server/db/index.js](server/db/index.js) if needed.

### 4. Set up environment variables

- Create a `.env` file in the `server` directory with the following content as an example:

```
PORT=5500
JWT_PRIVATE=your_jwt_secret
AWS_ACCESS_KEY=your_aws_access_key
AWS_SECRET_ACCESS_KEY=your_aws_secret
AWS_REGION=ap-southeast-1
AWS_S3_BUCKET=your_bucket_name
```

---

## Running the Application

### Run backend (server)

```sh
cd server
npm run dev
```
The server will run at `http://localhost:5500`.

### Run frontend (client)

```sh
cd client
npm start
```
The frontend will run at `http://localhost:8080`

---

## Useful Commands

- Build frontend for production:
  ```sh
  cd client
  npm run build
  ```
- Start server for production:
  ```sh
  cd server
  npm start
  ```

---

## Main Features

- Register, login, JWT authentication
- Create posts
- Like, comment, delete comments, delete posts
- Follow and unfollow users
- Search for users
- Edit personal profile, change password

---

## Development Team

Nguyen Phuoc Dac Hung