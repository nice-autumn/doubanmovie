<template>
  <div class="buyticket">
      <div class="ticketleft">
        <div class="ticket-hd">
          <h1>电影票 - 郑州</h1>
          <span class="tic-location">[切换城市]</span>
            
        </div>
        <!-- 正在热映 -->
        <div class="nowplaying">
            <div class="now-hd">
              <h2>正在上映</h2>
              <div class="now-bd">
                  <ul class="tic-frame">
                    <li class="tic-lists" v-for="(tic,index) in tickets" :key="index"> 
                    <a href="#">
                      <div class="tic-img">
                         <img :src="tic.photo" alt="">
                      </div>
                    </a>
                      <a href="#">
                         <p class="tic-title">{{tic.name}}</p>
                      </a>  
                      <div class="tic-name ">
                          <span class="tic-star" style="background-position:0 -11px"></span>
                          <span class="tic-score">{{tic.score}}</span>
                        </div>
                      <p class="tic-buy" @click="buy1">选座购票</p>
                  </li>
             </ul>
              </div>
              <div class="now-more"  @click="getMore" v-show="show1">显示全部影片</div> 
                 <div class="now-bd" v-show="show2">
                  <ul class="tic-frame">
                    <li class="tic-lists" v-for="(mor,index) in more" :key="index"> 
                    <a href="#">
                      <div class="tic-img">
                         <img :src="mor.photo" alt="">
                      </div>
                    </a>
                      <a href="#">
                         <p class="tic-title">{{mor.name}}</p>
                      </a>  
                      <div class="tic-name ">
                          <span class="tic-star" style="background-position:0 -11px"></span>
                          <span class="tic-score">{{mor.score}}</span>
                        </div>
                      <p class="tic-buy" @click="buy1">选座购票</p>
                  </li>
             </ul>
              </div>
            </div>
        </div>
       <!-- 即将上映 -->
       <div class="upcoming">
         <div class="now-hd">
              <h2>即将上映</h2>
              <div class="now-bd">
                  <ul class="tic-frame">
                    <li class="tic-lists" v-for="(mov,index) in movies" :key="index">
                    <a href="#">
                      <div class="mov-img">
                         <img :src="mov.photo" alt="">
                      </div>
                    </a>
                      <a href="#">
                         <p class="tic-title">{{mov.name}}</p>
                      </a>  
                      <div class="tic-up">
                        <p>05月28日上映</p>
                        </div>
                      <p class="tic-buy" @click="buy1">选座购票</p>
                  </li>
             </ul>
              </div>
            </div>
       </div>
      </div>
  </div>
</template>

<script>
export default {
  data(){
    return{
     tickets:[],
     movies:[],
     more:[],
     show1:true,
     show2:false
    }
  },
  mounted(){
  this.getTicket()
  this.getMovies()
  },
   methods:{
      getTicket(){  //正在上映
    this.axios.get("http://localhost:3000/items",{
      params:{
        page1:0,
        num1:15
      }
    }).then((res)=>{
      this.tickets=res.data
    }).catch((err)=>{
      console.log(err);
    })
  }, 
  getMovies(){  //即将上映
    this.axios.get("http://localhost:3000/items",{
      params:{
        page1:20,
        num1:10
      }
    }).then((res1)=>{
      this.movies=res1.data
    }).catch((err1)=>{
      console.log(err1);
    })
  },
  getMore(){ 
     //加载更多
   this.axios.get("http://localhost:3000/items",{
      params:{
        page1:16,
        num1:10
      }
    }).then((res)=>{
      this.more=res.data
    }).catch((err)=>{
      console.log(err);
    })
    this.show1 = false
    this.show2 = true
  },
   buy1(){
    if(sessionStorage.getItem('name')){
      alert('购票成功')
    }else{
      this.$router.push({path:'/Login'})
    }
  }
  }
}
</script>

<style>
.buyticket{
  width: 1040px;
  margin: 0 auto;
}
.ticketleft{
  width: 675px;
}
.ticket-hd{
  display: flex;
}
.tic-location{
  color: #37a;
  padding: 15px 0 0 7px;
}
.now-hd{
  margin-top: 10px;
}
.now-hd h2{
  font-weight: normal;
  font: 15px Arial, Helvetica, sans-serif;
  color: #072;
  margin: 0 0 12px 0;
  line-height: 150%;
  border-bottom: 1px solid #eee;
  padding-bottom: 10px;
}
.tic-frame{
  margin-left: -23px;
  display: flex;
  flex-wrap: wrap;
}
.tic-lists{
  display: inline-block;
  text-align: center;
  width: 115px;
  margin: 0 0 32px 24px;
  overflow: hidden;
}
.tic-img{
  height: 161px;
  overflow: hidden;
  margin-bottom: 12px;
}
.tic-lists img{
  width: 115px;
}
.tic-title{
  color: #333;
  height: 24px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.tic-star {
  display: inline-block;
  margin: 3px 3px 0 0;
  width: 55px;
  height: 11px;
  background: url(../assets/images/star.png) no-repeat;
}
.tic-score{
  margin-left: 2px;
  color: #e09015;
}
.tic-buy{
  width: 95px;
  text-align: center;
  height: 24px;
  color: #494949;
  border: 1px solid #d9d9d9;
  border-radius: 2px;
  margin: 0 auto;
  background: #EBEBEB;
  cursor: pointer;
}
.now-more{
  margin-bottom: 32px;
  height: 36px;
  line-height: 36px;
  text-align: center;
  font-size: 12px;
  cursor: pointer;
  background-color: #f5f5f5;
  color: #336699;
}
.tic-up{
  text-align: center;
  color: #aaa;
  margin-bottom: 5px;
}
</style>