const express = require ('express');
const app = express(); 
const PORT = 3000;  // 8080 mySQL

// Mi servidor 
app.get('/mi-servidor', (req, res) => {
  res.send('Mi server en express')
});

// //Vamos a renderizar con el formato json 
app.get('/datos', (req, res) => {
  res.json({
    name: 'producto 1',
    price: 1000
});
});

app.get('/hola', (req, res) => { res.send('Hello crayola'); });

app.get('/route-new', (req, res) => { res.send('Hola soy una nueva ruta o endpoint'); });

app.get('/products', (req, res) => { 
    res.json([{ 
         name: 'Laptop Gamer', 
         price: 23000,
        }, 
        { name: 'iPhone X3',
         price: 32000, 
        } 
    ]);
});

app.get('/products/:id', (req, res) => { 
    const { id } = req.params; 
    res.json({
         id, 
         name: 'iPhone X3', 
         price: 32000, 
    }); 
});

app.get('/categories/:categoryId/products/:productId', (req, res) => { 
    const { categoryId, productId } = req.params; 
    res.json({ categoryId, productId }); 
});

app.get('/categories/:categoryId', (req, res) => { 
    const { categoryId } = req.params; 
    res.json({ 
        categoryId,
        category: 'Computers & Accesories'
    }); 
});

app.get('/people', (req, res) => { 
    res.json([{ 
        name: 'Arturo',
        type: 'employee'
        }, 
    { name: 'Jimena',
     type: 'customer' 
    }]); 
});

app.get('/people/:id', (req, res) => {
     const { id } = req.params; 
     res.json({ 
        id, 
        name: 'Arturo', 
        type: 'employee'
     });
});

//validamos si existen 
app.get('/users', (req,res) => {
    const {limit,offset} = req.query;
     if(limit && offset){
      res.json({
        limit,
        offset
      });
     }else {
      res.json('No hay parametros');
    }
});








app.listen(PORT, () => { 
    console.log('El servidor esta corriendo con Express, en http://localhost:3000')}); 