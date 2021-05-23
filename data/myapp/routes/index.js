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
 connection.query(`select * from movielists limit ${page},5;`,(err,rows,fields)=>{
   res.send(rows)
  })
});

// 热门电影接口
router.get('/items', function(req, res, next) {
  var page1=(req.query.page1)*15
  var num1=(req.query.num1)
 connection.query(`select * from movielists limit ${page1},${num1};`,(err,rows,fields)=>{
   res.send(rows)
  })
});
// 热门电视剧接口
router.get('/tvs', function(req, res, next) {
  var page2=(req.query.page2)*10
 connection.query(`select * from movietv limit ${page2},10;`,(err,rows,fields)=>{
   res.send(rows)
  })
});

// 评论接口
router.get('/comment', function(req, res, next) {
  var dis=(req.query.dis)*10
  var num=(req.query.num)
 connection.query(`select * from comment limit ${dis},${num};`,(err,rows,fields)=>{
   res.send(rows)
  })
});

//选电影tab切换接口
router.get('/tabs', function(req, res, next) {
  var tab=(req.query.tab)
  var more=(req.query.more)*15
 connection.query(`select * from movielists where tabs='${tab}' limit ${more},15;`,(err,rows,fields)=>{
   res.send(rows)
  })
});

//电视剧tab切换接口
router.get('/changetv', function(req, res, next) {
  var tab1=(req.query.tab1)
  var more1=(req.query.more1)*15
 connection.query(`select * from movietv where type='${tab1}' limit ${more1},15;`,(err,rows,fields)=>{
   res.send(rows)
  })
});

//小组
router.get('/grouptv', function(req, res, next) {
 connection.query(`select * from group`,(err,rows,fields)=>{
   res.send(rows)
  })
});

//排行榜
router.get('/rank', function(req, res, next) {
 connection.query(`select * from rank;`,(err,rows,fields)=>{
   res.send(rows)
  })
});
module.exports = router;
