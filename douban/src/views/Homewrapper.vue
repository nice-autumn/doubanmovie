<template>
  <div class="wrapper">
    <div class="content">
      <!-- 正在热映 -->
      <div class="leftmovie1">
        <h2 class="hothead">
          正在热映
          <span class="hoting"><a href="#">全部正在热映»</a> </span>
          <span class="hotready"><a href="#">即将上映»</a></span>
        </h2>
        <div class="page">
          <Carousel
            v-model="value1"
            :autoplay="setting.autoplay"
            :autoplay-speed="setting.autoplaySpeed"
            :dots="setting.dots"
            :radius-dot="setting.radiusDot"
            :trigger="setting.trigger"
            :arrow="setting.arrow"
            @on-change="change"
          >
            <CarouselItem v-for="(item,i) in 8" :key="i" >
              <div class="demo-carousel">
                <div class="movie-item">
                  <ul class="carousel-con">
                    <li
                      class="carousel-item"
                      v-for="(list, index) in lists"
                      :key="index">
                      <div class="img-frame">
                        <img :src="list.photo" alt="" />
                      </div>
                      <p class="item-title">{{ list.name }}</p>
                      <div class="item-grade">
                        <span
                          class="item-star"
                          style="background-position: 0px -22px"></span>
                        <span class="item-score">{{ list.score }}</span>
                      </div>
                      <span class="item-seat">
                        <a href="#" @click="buy">选座购票</a>
                      </span>
                    </li>
                  </ul>
                </div>
              </div>
            </CarouselItem>
          </Carousel>
        </div>
      </div>
      <!-- 最近热门电影 -->
       <div class="leftmovie2">
        <h2 class="hothead">
           <div class="filter-tv"> 最近热门电影</div>
          <ul class="item-hotframe">
            <li class="hot-item" v-for="(tab,index1) in tabs" :key="index1">{{tab}}</li>
          </ul>
        </h2>
        <div class="page">
         <Carouselelse></Carouselelse>
        </div>
      </div>
      <!-- 最近热门电视剧 -->
      <div class="leftmovie3">
         <h2 class="hothead">
         <div class="filter-tv">最近热门电视剧</div>
          <ul class="item-hotframe">
            <li class="hot-item" v-for="(tab,index1) in tabs" :key="index1">{{tab}}</li>
          </ul>
        </h2>
        <div class="page">
         <Filmcomment></Filmcomment>
        </div>
      </div>
      <!-- 热门推荐 -->
      <div class="leftmovie4">
         <div class="hotrecomment">
            <h2>热门推荐</h2>
            <Hotrecomment></Hotrecomment>
         </div>
      </div>
      <!-- 受欢迎的影评 -->
      <div class="leftmovie5">
         <h2 class="hothead">
          最受欢迎的影评
          <span class="hoting"><a href="#">更多热门影评»</a> </span>
          <span class="hotready"><a href="#">新片影评»</a></span>
        </h2>
        <div class="com-list">
          <ul>
            <li class="com-items" v-for="(dis,index) in comments" :key="index">
              <div class="com-img">
                <img :src="dis.picture" alt="">
              </div>
              <div class="com-content">
                <h3><a href="#">{{dis.title}}</a></h3>
                <div class="com-stitle">
                  <div class="stitle-left">
                     <a href="#">{{dis.username}}</a>
                      评论
                     <a href="#">《{{dis.moviename}}》</a>
                  </div>
                 
                  <span class="item-star diffent"></span>
                </div>
                <div class="com-word">
                 {{dis.content}}
                  <a href="#">(全文)</a>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
     

    </div>
     <div class="rightmovie">
      <Billboard></Billboard>
    </div>
  </div>
</template>
<script>
import Carouselelse from '../components/Carouselelse.vue';
import Hotrecomment from '../components/Hotrecomment.vue';
import Filmcomment from '../components/Filmcomment.vue';
import Billboard from '../components/Billboard.vue';
export default {
  components: { Carouselelse, Hotrecomment,Filmcomment,Billboard},
  data() {
    return {
      value1: 0,
      setting: {
        autoplay: false,
        autoplaySpeed: 2000,
        dots: "none",
        radiusDot: true,
        trigger: "click",
        arrow: "always",
      },
      lists: [],
      tabs:['热门','最新','豆瓣高分','冷门佳片','华语','欧美'],
      tabs1:['热门','国产剧','综艺','美剧','日剧','韩剧'],
      comments:[]
    };
  },
  created() {
      this.getData()
      this.getCom()
  },
 
  methods:{
    change(oldValue, value){
      this.getData(value)
    },
     getData(p=0){
       this.axios.get("http://localhost:3000/lists", 
    {  params:{
        page:p
      }})
      .then((res) => {
        this.lists = res.data;
      }).catch((err) => {
        console.log(err);
      });
    },
     getCom(){
    this.axios.get("http://localhost:3000/comment",{
      params:{
        dis:0,
        num:4
      }
    }).then((res)=>{
      this.comments=res.data
    }).catch((err)=>{
      console.log(err);
    })
  },
  buy(){
    if(sessionStorage.getItem('name')){
      alert('购票成功')
    }else{
      this.$router.push({path:'/Login'})
    }
  }
  },
 
};
</script>
<style lang="css" scoped>
.wrapper {
  width: 1040px;
  margin: 0 auto;
}
.wrapper a{
  color:#37a;
}
.wrapper  a:hover{
  background-color: #27a;
  color: #fff;
}
.wrapper::after{
  content: ".";
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
}
.content{
  float: left;
  width: 675px;
}
.content h2 {
  font-weight: normal;
  font-size: 16px;
  color: #111;
  overflow: hidden;
  padding-bottom: 10px;
  border-bottom: 1px solid #eaeaea;
}
.leftmovie1 {
  position: relative;
  float: left;
  width: 675px;
}
.hoting a {
  padding: 0 10px;
  font-size: 13px;
  color: #666699;
}
.hotready a {
  padding-left: 5px;
  font-size: 13px;
  color: #666699;
}
.page {
  float: left;
  width: 675px;
  height: 270px;
}
.carousel-con {
  display: flex;
  justify-content: space-between;
}
.carousel-item {
  margin-top: 20px;
  width: 115px;
  height: 270px;
}
.img-frame {
  height: 161px;
  overflow: hidden;
  margin-bottom: 12px;
}
.carousel-item img {
  width: 115px;
}
/* 左边箭头 */
::v-deep .ivu-carousel-arrow.right {
  right: 0;
  top: -17px;
  width: 18px;
  height: 18px;
  color: #fff;
  background-color: #6d98d2;
}
::v-deep .ivu-carousel-arrow.left {
  left: unset;
  right: 23px;
  top: -17px;
  width: 18px;
  height: 18px;
  color: #fff;
  background-color: #6d98d2;
}
.item-title {
  color: #333;
  font-size: 14px;
  text-align: center;
  white-space: nowrap;
  height: 22px;
  overflow: hidden;
  text-overflow: ellipsis;
}
.item-grade {
  height: 19px;
  width: 80px;
  margin: 2px 20px;
}
.item-star {
  float: left;
  display: inline-block;
  margin: 3px 3px 0 0;
  width: 55px;
  height: 11px;
  background: url(../assets/images/star.png) no-repeat;
}
.item-score {
  float: left;
  color: #e09015;
  font-size: 12px;
  margin-left: 2px;
}
.item-seat {
  display: block;
  margin: 0 auto;
  text-align: center;
  width: 90px;
  height: 24px;
  line-height: 24px;
  background-color: #268dcd;
  color: #fff;
  border-radius: 2px;
    z-index: 9;
}
.item-seat a {
  color: #fff;
  font-size: 12px;
}
.item-seat a:hover{
   background-color: #268dcd;
  color: #fff;
}
/* 最近热门电影 */
.leftmovie2 {
  position: relative;
  float: left;
  width: 675px;
  height: 513px;
  margin-top: 50px;
}
.filter-tv{
  float: left;
}
.item-hotframe{
  float: left;
  margin-top: 2px;
  margin-left: 15px;
}
.hot-item{
  float: left;
  margin-right: 12px;
  font-size: 13px;
  color: #9B9B9B;
}
.hot-item:hover{
   background-color: #27a;
      color: #fff;
}
.leftmovie3{
   position: relative;
  float: left;
  width: 675px;
  height: 513px;
  margin-top: 30px;
}
.leftmovie4{
  position: relative;
  float: left;
  width: 675px;
  margin-top: 30px;
}
.leftmovie5{
  position: relative;
  float: left;
  width: 675px;
  margin-top: 30px;
}
/* 影评 */
.com-items{
  overflow: hidden;
  margin-bottom: 24px;
  padding-bottom: 24px;
  margin-top: 20px;
  border-bottom: 1px solid #eaeaea;
}
.com-list ul li:last-child{
  border: 0 none;
}
.com-img{
  float: left;
  width: 68px;
}
.com-img img{
  width: 68px;
}
.com-content{
  padding-left: 83px;
}
.com-content h3{
  font-weight: normal;
  font-size: 15px;
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
  color: #000;
  line-height: 20px;
}

/* 右边排行榜 */
.rightmovie{
  float: right;
  width: 300px;
}
</style>