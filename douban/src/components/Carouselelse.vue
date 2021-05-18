<template>
    <Carousel v-model="value2"   @on-change="change2">
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
                      <p class="item-title">{{ list.name }}</p>
                      <div class="item-grade">
                        <span
                          class="item-star"
                          style="background-position: 0px -22px"></span>
                        <span class="item-score">{{ list.score }}</span>
                      </div>
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
                value2: 0
            }
        },
        methods:{
         change2(oldValue, value){
      this.getData(value)
    },
     getData(p=0){
       this.axios
      .get("http://localhost:3000/lists", 
    {  params:{
        page:p,
        limit:10
      }})
      .then((res) => {
        // console.log(res.data);
        this.lists = res.data;
      }).catch((err) => {
        console.log(err);
      });
    },
        }
    }
</script>
<style lang="css" scoped>
.img-frame {
  height: 161px;
  overflow: hidden;
  margin-bottom: 12px;
}
.carousel-item img {
  width: 115px;
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
</style>