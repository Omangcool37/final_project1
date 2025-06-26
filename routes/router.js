const express = require('express')
const router = express.Router()
const PORT = process.env.PORT || 3005

router.use(express.static('public'))

const endpoints = ['book', 'author', 'format', 'genre', 'publisher']

endpoints.forEach(endpoint =>{
    router.use(`/api/${endpoint}`, require(`./api/${endpoint}Route`))
})

router.get('/api', (req, res) => {
    res.json({
        'Book': `http://localhost:${PORT}/api/book`,
        'Author': `http://localhost:${PORT}/api/author`,
        'Publishing Company': `http://localhost:${PORT}/api/publisher`,
        'Format': `http://localhost:${PORT}/api/format`,
        'Genre': `http://localhost:${PORT}/api/genre`
    })
})



module.exports = router