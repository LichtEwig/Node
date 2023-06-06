const express = require('express');
const servidor = express();

const puerto = 3001;


// servidor.get("/", (req, res) => {
//      res.send('Hola Mundo!');
//   });
  
// servidor.get("/home", (req, res) => {
//     res.send('Hola Mundo! Estoy en el Home de mi sitio!');
//   });
// servidor.get("/carrit", (req, res) => {
//     res.send('Hola Mundo! Estoy en el Carrito de compras!');
//   });


  servidor.use(express.static('public'));
  

  servidor.get('/index-pag',(req,res) =>{
    res.sendFile(__dirname + '/public/index.html');
  });


 //el puerto de acceso  - cualquier numero  
servidor.listen(puerto, () => {
    console.log(' Corriendo el servidor con express  http://localhost:3001' )
});