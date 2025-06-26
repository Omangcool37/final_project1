const express = require('express')
const router = express.Router()
const { bookDao: dao} = require('../../daos/dao')



router.get('/', (req, res)=>{
    dao.findBook(res, dao.table)
})



router.get('/rating/:rating', (req, res)=>{
    dao.findByRating(res, dao.table, req.params.rating)
})


router.get('/binding/:binding', (req, res)=>{
    dao.findByBinding(res, dao.table, req.params.binding)
})




router.get('/sort', (req, res)=>{
    dao.sort(res, dao.table)
})



router.get('/:id', (req, res)=>{
    dao.findBookById(res, dao.table, req.params.id)
})


router.post('/post', (req, res)=>{
    dao.create(req, res, dao.table)
})


module.exports = router