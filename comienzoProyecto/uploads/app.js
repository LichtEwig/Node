const  express  =  require ( 'express' ) 
const  multer   =  require ( 'multer' ) 
const  upload  =  multer ( {  dest : 'uploads/'  } )

//  aplicación  const =  express ( )

// aplicación _ post ( '/profile' ,  upload . single ( 'avatar' ) ,  function  ( req ,  res ,  next )  { 
//   // req.file es el archivo `avatar` 
//   // req.body contendrá los campos de texto, si los hubiera cualquiera 
// } )

// aplicación _ post ( '/photos/upload' ,  upload . array ( 'photos' ,  12 ) ,  function  ( req ,  res ,  next )  { 
//   // req.files es una matriz de archivos `photos` 
//   // req.body contendrá el texto campos, si los hubiera 
// } )

// const  cpUpload  =  cargar . campos ( [ {  nombre : 'avatar ' ,  maxCount : 1  } ,  {  nombre : 'gallery' ,  maxCount : 8  } ] ) 
// aplicación . post ( '/cool-profile' ,  cpUpload ,  function  ( req ,  res ,  next )  { 
//   // req.files es un objeto (String -> Array) donde fieldname es la clave, y el valor es una matriz de archivos
//   // 
//   // p. ej. 
//   // req.files['avatar'][0] -> File 
//   // req.files['gallery'] -> Array 
//   // 
//   // req.body contendrá los campos de texto, si los hubiera cualquiera 
// } )