<template>
  <div class="ranklist">
    <h1>豆瓣电影排行榜</h1>
    <div class="rankleft">
      <h2>豆瓣新片榜· · · · · ·</h2>
      <div class="rank-con">
        <ul>
         <li class="com-items" v-for="(dis,index) in ranks" :key="index">
              <div class="com-img">
                <img :src="dis.pic" alt="">
              </div>
              <div class="com-content">
                <span><a href="#">{{dis.title}}</a></span>
                <div class="com-word">
                 {{dis.actor}}
                </div>
                <div class="rank-star">
                  <span class="item-star"></span>
                  <span class="rank-score">{{dis.score}}</span>
                  <span>{{dis.comment}}</span>
                </div>
              </div>
            </li>
        </ul>
      </div>
    </div>
    <div class="rankright">
      <div class="rirht1">
        <Billboard></Billboard>
      </div>
      <div class="right2">
        <North></North>
      </div>
      
    </div>
  </div>
</template>

<script>
import Billboard from '../components/Billboard.vue'
import North from '../components/North.vue'
export default {
  components: { Billboard,North },
  data(){  
    return{
      ranks:[]
    }
  },
  created() {
      this.getCom()
  },
 methods:{
    getCom(){
    this.axios.get("http://localhost:3000/rank").then((res)=>{
      this.ranks=res.data
    }).catch((err)=>{
      console.log(err);
    })
  }
 }
}
</script>

<style>
.ranklist{
  width: 1040px;
  margin: 0 auto;
  overflow: hidden;
}
.rankleft{
  width: 675px;
  float: left;
  margin-top: 10px;
}
.rankright{
  float: right;
}
.rankleft h2{
  font: 15px Arial, Helvetica, sans-serif;
  font-size: 16px;
  color: #072;
  margin: 0 0 12px 0;
  padding-bottom: 15px;
  line-height: 150%;
  border-bottom:  1px dashed #DDDDDD;
}
.com-items{
  overflow: hidden;
  margin-bottom: 24px;
  padding-bottom: 24px;
  margin-top: 20px;
  border-bottom:  1px dashed #DDDDDD;
}
.com-list ul li:last-child{
  border: 0 none;
}
.com-img{
  float: left;
  width: 75px;
}
.com-img img{
  width: 75px;
}
.com-content{
  padding-left: 100px;
}
.com-content span{
  font: 13px Arial, Helvetica, sans-serif;
  line-height: 150%;
  color: #666666;
}
.com-content span a{
  font: 14px Arial, Helvetica, sans-serif;
  color: #37a;
}
.com-stitle{
  display: flex;
  font-size: 13px;
  color: #666;
  padding: 5px 0;
}
.com-stitle a{
  color: #666;
}
.com-word{
  margin-top: 10px;
}
.rank-con ul li:last-child{
          border: 0 none;
        }
.rank-star{
  margin-top: 10px;
}
 .item-star {
  display: inline-block;
  margin: 3px 3px 0 0;
  width: 55px;
  height: 11px;
  background: url(../assets/images/star.png) no-repeat;
  }
 .rank-star .rank-score{
    color: #e09015;
    font-size: 12px;
    padding: 0 3px;
  }
  .rank-star span{
    margin-left: 6px;
  }
  .rankright .right2{
    margin-top: 30px;
  }
</style>