const express = require('express')
const router = express.Router()

const { authorDao: dao} = require('../../daos/dao')



router.get('/', (req, res)=>{
    dao.findAll(res, dao.table)
})



router.get('/author/:id', (req, res)=>{
    dao.findBookByAuthor(res, dao.table, req.params.id)
})


router.post('/post', (req, res)=>{
    dao.create(req, res, dao.table)
})


router.get('/sort', (req, res)=>{
    dao.sort(res, dao.table)
})


router.get('/:id', (req, res)=>{
    dao.findById(res, dao.table, req.params.id)
})




module.exports = router