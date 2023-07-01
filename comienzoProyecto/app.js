const express = require('express');
const app = express();

const port = 3001;


app.get('/', (req, res) => {
    res.send ("Hola Mundo! Como estan?  ")
});

app.get('/home', (req, res) => {
    res.send('Mi server en express')
  });



app.listen(port, () => { console.log('Servidor funcionando port:  http://localhost:3001 ' + port); });