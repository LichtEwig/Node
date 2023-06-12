Curso de Backend con node. js API RST con EXPRESS js. 

Archivo .gitignore  
--- https://docs.gitignore.io/
 -- https://www.toptal.com/developers/gitignore



configuramos el package.json con:
"scripts": {
     "dev" : "nodemon index.js",
     "start": "node index.js"
     
} 

* Instalamos la dependencias de desarrollo: 
npm i nodemon  -D 


* Una vez descargado las dev dependencia probamos si funciona la ejecucion del proyecto

npm run dev   // me funciono por actualizacion

* nodemon index.js
* npm start
* npm run start

## instalar express 
* Dependencia de produccion
npm install express

# Servidor express 

const express = require('express');
const app = express();
const PORT = 3001;


//metodo de escuchar el puerto del servidor 

app.listen(PORT, () => {
    console.log('El Servidor esta corriendo en el puerto http://localhost:3001')});



### Routing  - Rutas

´´´

app.get('/', (req, res) => {
  res.send('Mi server en express')
});
//Vamos a renderizar con el formato json 
app.get('/', (req, res) => {
  res.json({
    name: 'producto 1',
    price: 1000
});
});

´´´ 
## Definiciones:

REST: Representational State Transfer
Es una convección que se refiere a servicios web por protocolo HTTP

Metodos: Verbos  

Get: Obtener - detalles visuales  <br>
Put: Modificar/   Actualizar (tambien se envia el id de los que quiera actualizar)<br>
Patch: Modificar/Actualizar <br>
Post: Crear <br>
Delete: Eliminar<br><br><br>

<img src="./img/cuadro.png" alt="cuadro de convencion de metodos">

Patch
El método de solicitud HTTP PATCH aplica modificaciones parciales a un recurso.

PATCH es algo análogo al concepto de “actualización” que se encuentra en CRUD, Una solicitud se considera un conjunto de instrucciones sobre cómo modificar un recurso. Contrasta esto con PUT; que es una representación completa de un recurso.PATCH

Mo es necesariamente idempotente, aunque puede serlo. Contrasta esto con PUT; que siempre es idempotente.

La palabra “idempotente” significa que cualquier número de solicitudes repetidas e idénticas dejará el recurso en el mismo estado.

Por ejemplo, si un campo de contador de incremento automático es una parte integral del recurso, entonces un PUT lo sobrescribirá naturalmente (ya que sobrescribe todo), pero no necesariamente para .PATCH

PATCH (como POST) puede tener efectos secundarios sobre otros recursos.

PATCH - HTTP | MDN


#  GET
Por ejemplo: 
const express = require("express");
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('Hello crayola');
});

app.get('/route-new', (req, res) => {
    res.send('Hola soy una nueva ruta o endpoint');
});

app.get('/products', (req, res) => {
    res.json([{
            name: 'Laptop Gamer',
            price: 23000,
        },
        {
            name: 'iPhone X3',
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
    res.json({
        categoryId,
        productId
    });
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
    }, {
        name: 'Jimena',
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

app.listen(PORT, () => {
    console.log('Mi puerto es: ' + PORT);
})


# Practica de todo el proyecto de ejemplo 

//console.log("My app");
const express = require('express');
const app = express();
const port = 3000;

//definir ruta con get
app.get('/', (req, res) => {
  res.send('Mi server en express')
});

app.get('/nueva-ruta', (req, res) => {
  res.send('Hola, soy una nueva ruta')
});
app.get('/productos', (req, res) => {
  res.send('Mi server en express - con productos')
});
// Vamos a renderizar con el formato json
app.get('/products', (req, res) => {
  res.json([
    {
      name: 'producto 1',
      price: 1000
    },{
      name: 'producto 2',
      price: 2000
    }
  ]);
});

app.get('/products/:id', (req,res)=> {
  //podemos retorna un solo objeto por si :id
  const id = req.params.id;
  res.json(
    {
      id,
      name: 'producto 1',
      price: 1000
    });
});

app.get('/categories/:categoryId/products/:productId', (req, res) => {
    const { categoryId, productId } = req.params;
    res.json({
        categoryId,
        productId
      });

    });


app.listen(port, () => {
  console.log(`Example app listening on port ${port}!`)
});



### Me puedo ayudar de postman - App 

localhost:3000/users?limit=10&offset=200

# queyparams
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


## path = Recibe los objetos de forma parcial - tambien se puede hacer con PUT 

 app.path('/:id', (req, res) => {
  const {id} = req.query;
  const body = req.body;
  res.json({
    message:'created', //update
    data:body,
    id,
  });
});