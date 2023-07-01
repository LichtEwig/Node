const { conn } = require('../config/conn');

const getItems = async () => {
  try {
    const [rows] = await conn.query('SELECT * FROM cliente;');
    return rows;
  } catch (error) {
    console.error('Error en en la query');
    throw error;
  } finally {
    console.log('Finished');
    conn.releaseConnection();
  }
}
module.exports = {
  getItems
}