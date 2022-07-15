var express = require('express');
var router = express.Router();
var usuariosModel = require('./../../models/usuariosModel');

router.get('/', function(req, res, next) {
    res.render('admin/login' ,{
        layout:'admin/layout' //view/admin/layout.hbs
    });  // view/admin/login.hbs)
})  

router.get('/logout', function(req, res, next) {
    req.session.destroy();  // destruye el id, nombre..
    res.render('admin/login' ,{
        layout:'admin/layout'
 })
})  


router.post('/', async function(req,res,next){

    try{
        console.log(req.body);
        //capturar los datos
        var usuario = req.body.usuario; //soledad
        var password = req.body.password; // 1234

        var data = await usuariosModel.getUserAndPassword(usuario,password);
        // var data = select* from usuarioas where usuario = 'soledad' and password = md5(1234)
        //select trae * = columna id, usuario, password


        if(data != undefined){
            req.session.id_usuario = data.id;
            req.session.nombre = data.usuario;
            res.redirect('/admin/novedades')
        } else{
            res.render('admin/login',{
                layout:'admin/layout',
                error:true
            })
        }



    }catch(error){
        console.log(error)
    }

}); // cierro post


    module.exports = router;