const express = require('express');
const router  = express.Router();

//     app = express();


router.get('/mi-servidor', (req, res) => {
    res.send('Mi server en express')
    res.status(404).json({
      message: 'Not Found'
    })
  });
router.get('/categories', (req, res) => { console.log('estoy en categorias')});
router.get('/categories/:categories', (req, res) => { console.log('Estoy en la categoria seleccionada') });

router.get('/categories/habitacion', (req, res) => { console.log('Estoy en la categoria seleccionada') });
router.get('/categories/:idhabitacion', (req, res) => { console.log('Estoy en la categoria seleccionada') });

router.get('/categories/bano', (req, res) => { console.log('Estoy en la categoria seleccionada') });
router.get('/categories/:idbano', (req, res) => { console.log('Estoy en la categoria seleccionada') });

router.get('/categories/garage', (req, res) => { console.log('Estoy en la categoria seleccionada') });
router.get('/categories/jardin', (req, res) => { console.log('Estoy en la categoria seleccionada') });




module.exports = router;