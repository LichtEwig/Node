// const mysql = require('mysql2');

// const connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: 'root',
//     database: 'base_de_datos_prueba'
// });

// connection.connect();
// module.exports = connection;

const mysql = require('mysql2');
require('dotenv').config(); 

const pool = mysql.createPool({
  host: process.env.HOST,
  user: process.env.USER,
  password: process.env.DBPASS,
  database: process.env.DB,
  port: process.env.PORT,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

/**
 * 
 * test connection 
 * 
 *  */ 




// Exportamos la conexión como una promesa
module.exports = {
    conn: pool.promise()
   };
   