const express = require('express');
const { patch } = require('../clase-n28-29/src/Routes/itemRoutes');
const app = express();


const port = 3001;


app.get('/', (req, res) => {
    res.send ("Hola Mundo! Como estan?  ")
});

app.get('/home', (req, res) => {
    res.send('Mi server en express')
  });



app.listen(port, () => { console.log('Servidor funcionando port:  http://localhost:3001 ' + port); });

app.use((express.static)('public'));

app.set('view engeine','ejs');
app.set('views', path.join (__dirname + './src/views'));

app.get("/",  (req,res) => {
   res.render(path.join (__dirname + '../views/home'))
});


