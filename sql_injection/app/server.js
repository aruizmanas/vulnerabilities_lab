const express = require('express');
const { Pool } = require('pg');
const bodyParser = require('body-parser');
const path = require('path');

const app = express();
const port = 3000;

// PostgreSQL connection pool
const pool = new Pool({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'user',
  password: process.env.DB_PASSWORD || 'password',
  database: process.env.DB_NAME || 'auth_db',
  port: 5432,
});

app.use(bodyParser.urlencoded({ extended: true }));

// Serve the login page
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'views', 'login.html'));
});

// Vulnerable login endpoint
app.post('/login', async (req, res) => {
  const { username, password } = req.body;
  console.log(`username: ${username}, password: ${password}`);

  // WARNING: This is vulnerable to SQL injection
  const query = `SELECT * FROM users WHERE username = '${username}' AND password = '${password}'`;

  console.log('Executing query:', query);

  try {
    const result = await pool.query(query);
    console.log(result);
    if (result.rows.length > 0) {
      res.send(`<h1>Login Successful</h1><p>Welcome, ${result.rows[0].username}!</p>`);
    } else {
      res.status(401).send('<h1>Login Failed</h1><p>Invalid username or password.</p>');
    }
  } catch (err) {
    console.error(err);
    res.status(500).send('<h1>Error</h1><p>An error occurred during authentication.</p>');
  }
});

app.listen(port, () => {
  console.log(`App running at http://localhost:${port}`);
});
