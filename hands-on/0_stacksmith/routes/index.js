var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'main' });
});

/* GET gallery. */
router.get('/gallery/:category/:item', function(req, res, next) {
  res.render('image', { title: 'gallery',
                        category: req.params.category,
                        item: parseInt(req.params.item),
                        max: 6
                      });
});

module.exports = router;
