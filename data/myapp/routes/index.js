var express = require('express');
var router = express.Router();
const mysql=require('mysql')
const port=3000

const connection=mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'123456',
  database:'movielist'
})

connection.connect()

// 电影列表接口
router.get('/lists', function(req, res, next) {
  var page=(req.query.page)*5
  // var limit=(req.query.limit)
 connection.query(`select * from movielists limit ${page},5;`,(err,rows,fields)=>{
   res.send(rows)
 })
});

// router.listen(port, ()=> {
//   console.log('连接成功'+port)
// })
module.exports = router;
