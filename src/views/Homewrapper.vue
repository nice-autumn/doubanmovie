<template>
  <div class="wrapper">
    <div class="content">
      <!-- 正在热映 -->
      <div class="leftmovie">
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
                        <a href="#">选座购票</a>
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
        最近热门电影
          <ul class="item-hotframe">
            <li class="hot-item" v-for="(tab,index1) in tabs" :key="index1">{{tab}}</li>
          </ul>
        </h2>
        <div class="page">
         <Carouselelse></Carouselelse>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import Carouselelse from '../components/Carouselelse.vue';
export default {
  components: { Carouselelse },
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
      tabs:['热门','最新','豆瓣高分','冷门佳片','华语','欧美']
    };
  },
  created() {
      this.getData()
  },
 
  methods:{
    change(oldValue, value){
      this.getData(value)
    },
     getData(p=0){
       this.axios
      .get("http://localhost:3000/lists", 
    {  params:{
        page:p,
        limit:5
      }})
      .then((res) => {
        // console.log(res.data);
        this.lists = res.data;
      }).catch((err) => {
        console.log(err);
      });
    },
  },
};
</script>
<style lang="css" scoped>
.wrapper {
  width: 1040px;
  margin: 0 auto;
}
.content h2 {
  font-weight: normal;
  font-size: 16px;
  color: #111;
  padding-bottom: 10px;
  border-bottom: 1px solid #eaeaea;
}
.leftmovie {
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
}
.item-seat a {
  color: #fff;
  font-size: 12px;
}
/* 最近热门电影 */
.leftmovie2 {
  position: relative;
  float: left;
  width: 675px;
  margin-top: 50px;
}
.item-hotframe{
  position: absolute;
  top: 2px;
  left: 110px;
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

</style>