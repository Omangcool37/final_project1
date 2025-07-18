const con = require('../../config/dbconfig')

//do findBy- Author, Genre, Publisher, and Format
const bookDao = {
    table: 'book',
    findBook: (res, table)=>{
        con.query(
            `SELECT b.book_id, b.title, a.author_id, p.pub_id, b.copyright_year, b.edition, b.edition_year, f.format_id, b.binding, b.rating, b.language, b.num_pages, b.cover_image, b.qty
            FROM book b
            JOIN author a USING (author_id)
            JOIN publishing_company p USING (pub_id)
            JOIN format f USING (format_id)
            ORDER BY b.book_id;
            `,
            (error, rows) =>{
                if(!error){
                    if(rows.length === 1){
                        res.json(...rows)
                    } else {
                        res.json(rows)
                    }
                } else {
                    console.log(console.log(`DAO ERROR: ${table}`, error))
                }
            }
        )
    },

    findBookById: (res, table, id)=>{

        con.execute(
            `SELECT b.book_id, b.title, a.author_id, a.author_name, p.pub_id, p.company_name, b.copyright_year, b.edition, b.edition_year, f.format_id, f.format, b.binding, b.rating, b.language, b.num_pages, b.cover_image, b.qty
            FROM book b
            JOIN author a USING (author_id)
            JOIN publishing_company p USING (pub_id)
            JOIN format f USING (format_id)
            WHERE b.book_id = ${id};`,
            (error, rows) =>{
                if(!error){
                    if(rows.length === 1){
                        res.json(...rows)
                    } else {
                        res.json(rows)
                    }
                } else {
                    console.log(console.log(`DAO ERROR: ${table}`, error))
                }
            }
        )
    },

    sort:(res, table)=>{
        con.query(
            `SELECT b.book_id, b.title, a.author_id, p.pub_id, b.copyright_year, b.edition, b.edition_year, f.format_id, b.binding, b.rating, b.language, b.num_pages, b.cover_image, b.qty
            FROM book b
            JOIN author a USING (author_id)
            JOIN publishing_company p USING (pub_id)
            JOIN format f USING (format_id)
            ORDER BY b.title;`,
            (error, rows) =>{
                if(!error){
                    if(rows.length === 1){
                        res.json(...rows)
                    } else {
                        res.json(rows)
                    }
                } else {
                    console.log(console.log(`DAO ERROR: ${table}`, error))
                }
            }
        )
    },


    findByRating:(res, table, rating)=>{
        con.query(
            `SELECT b.book_id, b.title, a.author_id, p.pub_id, b.copyright_year, b.edition, b.edition_year, f.format_id, b.binding, b.rating, b.language, b.num_pages, b.cover_image, b.qty
            FROM book b
            JOIN author a USING (author_id)
            JOIN publishing_company p USING (pub_id)
            JOIN format f USING (format_id)
            WHERE b.rating = '${rating}' ORDER BY b.book_id;`,
            (error, rows) =>{
                if(!error){
                    if(rows.length === 1){
                        res.json(...rows)
                    } else {
                        res.json(rows)
                    }
                } else {
                    console.log(console.log(`DAO ERROR: ${table}`, error))
                }
            }
        )
    },

    findByBinding:(res, table, binding)=>{
        con.query(
            `SELECT b.book_id, b.title, a.author_id, p.pub_id, b.copyright_year, b.edition, b.edition_year, f.format_id, b.binding, b.rating, b.language, b.num_pages, b.cover_image, b.qty
            FROM book b
            JOIN author a USING (author_id)
            JOIN publishing_company p USING (pub_id)
            JOIN format f USING (format_id)
            WHERE b.binding = '${binding}' ORDER BY b.book_id;`,
            (error, rows) =>{
                if(!error){
                    if(rows.length === 1){
                        res.json(...rows)
                    } else {
                        res.json(rows)
                    }
                } else {
                    console.log(console.log(`DAO ERROR: ${table}`, error))
                }
            }
        )
    },



}

module.exports = bookDao