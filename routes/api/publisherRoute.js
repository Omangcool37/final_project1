const express = require('express')
const router = express.Router()
const { publishingDao: dao} = require('../../daos/dao')



router.get('/', (req, res)=>{
    dao.findPublisher(res, dao.table)
})


router.get('/publishing/:id',(req, res)=>{
    dao.findBookByPublisher(res, dao.table, req.params.id)
})

router.get('/sort', (req, res)=>{
    dao.sort(res, dao.table)
})


module.exports = router