var express = require('express');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');


router.get('/', async function(req, res, next) {

    var novedades = await novedadesModel.getNovedades()
    res.render('admin/novedades' ,{
        layout:'admin/layout', // admin/layout.hbs
        persona:req.session.nombre, //soledad
        novedades
    });  // view/admin/login.hbs)
});  //cierro get

//=> o function
// esto sirve para mostrar el alta las novedades

router.get('/agregar', (req,res, next) =>{
    res.render('admin/agregar',{
        layout: 'admin/layout'
    })
})

router.post('/agregar', async(req,res,next) =>{
    // console.log(req.body)
    try{
        if(req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != ""){
            await novedadesModel.insertNovedades(req.body);
            res.redirect('/admin/novedades')
            } else {
                res.render('admin/agregar',{
                    layout: 'admin/layout',
                    error: true,
                    message: 'Todos los campos son requeridos'
                })

            }

    }catch(error){
        console.log(error)
        res.render('admin/agregar',{
            layout:'admin/agregar',
            error:true,
            message: 'No se carga la novedad'
        })
    }
})   
 
    module.exports = router;