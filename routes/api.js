var express = require('express');
var router = express.Router();


router.get('/api/saludo', (req, res) => {
   var nombre = req.query.nombre;
   console.log(nombre);
   res.render('api', { "nombre": nombre});
})

module.exports = router;