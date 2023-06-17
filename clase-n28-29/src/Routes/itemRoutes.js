const express = require('express');

const router = express.Router();
//     app = express();


///Rutas de cada una de mis acciones  - Famosa CRUD o API REST 

router.get('items',(req, res) => {console.log('Vamos mostrar todos los items')});

router.get('items/:iditem',(req, res) => { console.log('va  mostrar el item solo ')});

router.post('items/create',(req, res) => { console.log(' Creacion de item ')});

router.put('items/:item',(req, res) => { console.log('Modifica el item seleccionado')});

router.delete('items/:item',(req, res) => { console.log(' elimina el items seleccionado')});



module.exports =  router;