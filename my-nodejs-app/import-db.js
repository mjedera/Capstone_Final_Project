const mysql = require('mysql2/promise');
const fs = require('fs');
const path = require('path');

async function importDatabase() {
  let connection;

  try {
    // Create connection using the same config as sample.js
    connection = await mysql.createConnection({
      host: 'mysql-f8cc56-lacanojomari-c434.i.aivencloud.com',
      port: 21964,
      user: 'avnadmin',
      password: 'AVNS_6iQqRqD1pZzKqlWcQc5',
      database: 'defaultdb',
      multipleStatements: true // Allow multiple SQL statements
    });

    console.log('✅ Connected to Aiven MySQL database "defaultdb"');

    // Read the SQL dump file
    const sqlFilePath = path.join(__dirname, 'my_nodejs_app_db (6).sql');
    const sqlDump = fs.readFileSync(sqlFilePath, 'utf8');

    // Split the dump into individual statements (optional, but can help with large dumps)
    const statements = sqlDump.split(';').filter(stmt => stmt.trim().length > 0);

    console.log(`📄 Found ${statements.length} SQL statements to execute`);

    // Execute each statement
    for (let i = 0; i < statements.length; i++) {
      const statement = statements[i].trim();
      if (statement) {
        try {
          await connection.execute(statement + ';');
          console.log(`✅ Executed statement ${i + 1}/${statements.length}`);
        } catch (err) {
          console.error(`❌ Error executing statement ${i + 1}:`, err.message);
          // Continue with next statement instead of stopping
        }
      }
    }

    console.log('🎉 Database import completed successfully!');

  } catch (err) {
    console.error('❌ Database import failed:', err.message);
  } finally {
    if (connection) {
      await connection.end();
      console.log('🔌 Connection closed');
    }
  }
}

// Run the import
importDatabase();
