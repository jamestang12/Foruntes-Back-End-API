const {Router, response} = require('express');
const pool = require('../db');
const { request } = require('../app');

const router = Router();

router.get('/', (request, response, next) => {
    pool.query('SELECT * FROM habitats ORDER BY id ASC', (err, res) => {
        if(err) return next(err);

        response.json(res.rows)
    })
})

router.post('/', (request, response, next) => {
    const {name, climate, temerature} = request.body;

    pool.query('INSERT INTO habitats(name, climate, temerature) VALUES($1, $2, $3)',[name, climate, temerature],
        (err,res) => {
            if(err) return next(err);
        
            response.redirect('/habitats');
        }
    )
})

module.exports = router;