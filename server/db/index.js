const { Pool } = require('pg');
const dotenv = require('dotenv');
dotenv.config();

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'picker',
  password: 'hung123dac',
  port: 5432,
});

pool.query('SELECT NOW()', (err, res) => {
  if (err) {
    console.error('Error executing query', err.stack);
  } else {
    console.log('Connected successfully');
  }
});

module.exports = pool;