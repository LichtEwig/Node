//Servidor de express  
const express = require('express');
const app = express(); /// Variables que guarda el modulo de express 
const itemRoutes = require('./src/Routes/itemRoutes.js');
const categoriasRoutes = require('./src/Routes/categoriasRoutes.js');



const PORT = 3005;
/* Requerimos la dependencia*/
require('dotenv').config();

/* Leemos la constante*/
const puerto = process.env.PORT;


app.get('/mi-servidor', (req, res) => {
    res.send('Mi server en express')
  });

 //  ('/nombre',)
app.use('/', itemRoutes);
app.use('/categorias', categoriasRoutes);

app.use(express.static('public'));

///Rutas de cada una de mis acciones  - Famosa CRUD o API REST 



// status Middware 

// app.get ('/:id', (req,res) =>{ 
//     const { id }  =req.params;
//     if (id === 999){
//         res.status(404).json({
//             message: ' not found'
//         });

//         }else {
//             res.status(200).json({
//                 id, 
//                 name ='Producto 2',
//                 price: 3000
//             });
//         }
//     }
// );



//Acciones  Escuchar el puerto 3005
app.listen(PORT, () => { 
    (console.log('El servidor esta funcionando con express http://localhost:3005'))});
   