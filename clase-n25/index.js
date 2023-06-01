Entry point 

//  const calculos = require('./calculadora.js');

//  console.log(calculos.sumar(50,60));
//  console.log(calculos.restar(50,60));
//  console.log(calculos.multiplicar(50,60));
//  console.log(calculos.dividir(50,60));


/// Comenzamos servidor  de node 


// const http = require('http');

// const servidor = http.createServer((req,res) =>{
//     res.writeHead(200,{
//         'Content-Type': 'text/plain',
//     });
//     res.end(' Hola Mundo, estoy en un archivo de texto plano');
// });

// // no utilices el puerto 8080 porque es mysql 
// servidor.listen(3000,() => console.log('servidor corriendo en puerto  http://localhost:3000'));



// const http = require('http');

// const servidor = http.createServer((req,res) =>{
//     res.writeHead(200,{
//         'Content-Type': 'text/html; charset=utf-8'
//     });
//     res.end('<h1> Hola Mundo!!  Soy un ñandú </h1> <p> estoy en un archivo de html </p>');
// });

// // no utilices el puerto 8080 porque es mysql 
// servidor.listen(3000,() => console.log('servidor corriendo en puerto  http://localhost:3000'));



const http = require('http');
const fs = require('fs');

const servidor = http.createServer((req,res) =>{
    const file = fs.readFileSync(__dirname + '/index.html');
    res.writeHead(200,{
        'Content-Type': 'text/html; charset=UTF-8'
});
    res.end(file);
});

// no utilices el puerto 8080 porque es mysql 
servidor.listen(3000,() => console.log('servidor corriendo en puerto  http://localhost:3000'));