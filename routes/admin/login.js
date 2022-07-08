var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    res.render('admin/login' ,{
        layout:'admin/layout' //view/admin/layout.hbs
    });  // view/admin/login.hbs)
})  
    module.exports = router;