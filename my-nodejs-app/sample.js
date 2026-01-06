// filename: test-db.js
const mysql = require('mysql2/promise');
const fs = require('fs');

async function testConnection() {
  let connection;

  try {
    connection = await mysql.createConnection({
      host: 'mysql-f8cc56-lacanojomari-c434.i.aivencloud.com',
      port: 21964,
      user: 'avnadmin',
      password: 'AVNS_6iQqRqD1pZzKqlWcQc5',
      database: 'defaultdb',
      ssl: {
        ca: fs.readFileSync('./ca.pem'),
      },
    });

    console.log('✅ Successfully connected to Aiven MySQL');

    // 🔍 Fetch all users
    const [rows] = await connection.execute('SELECT * FROM users');

    console.log('👤 USERS TABLE DATA:');
    console.table(rows);

  } catch (err) {
    console.error('❌ Connection or query failed:', err.message);
  } finally {
    if (connection) {
      await connection.end();
    }
  }
}

testConnection();
