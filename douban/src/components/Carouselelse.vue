<template>
    <Carousel v-model="value2" 
      :dots="setting.dots"
      :arrow="setting.arrow"
      @on-change="change2">
        <Carousel-item v-for="(item,i) in 4" :key="i" >
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
                      <p class="item-title">{{ list.name }}
                         <span class="item-score">{{ list.score }}</span>
                      </p>
                       
                    </li>
                  </ul>
                </div>
              </div>
        </Carousel-item>
    </Carousel>
</template>
<script>
    export default {
        data () {
            return {
                value2: 0,
                 setting: {
                   dots:'none',
                   arrow: "always",
                   },
                   lists:[]
            }
        },
        mounted(){
          this.getData1()
        },
        methods:{
         change2(oldValue, value){
         this.getData1(value)
    },
     getData1(n=0){
       this.axios.get("http://localhost:3000/items", 
    {  params:{
        page1:n,
        num1:10
      }})
      .then((res) => {
        this.lists = res.data;
      }).catch((err) => {
        console.log(err);
      });
    },
        }
    }
</script>
<style lang="css" scoped>
.carousel-con {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.carousel-item {
  margin-top: 20px;
  width: 115px;
}
.img-frame {
  height: 161px;
  overflow: hidden;
  margin-bottom: 12px;
}
.carousel-item img {
  width: 115px;
}
.item-title {
  color: #37a;
  margin: 5px 0 0;
  font-size: 13px;
  text-align: center;
  overflow: hidden;
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
  color: #e09015;
  font-size: 12px;
  margin-left: 2px;
}
</style>