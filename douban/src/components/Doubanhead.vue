<template>
   <div>
   <div class="db-nav">
      <div class="db-wrap">
          <div class="nav-primary">
                 <router-link to="/">
                 <div class="nav-logo">
                   <a href="">豆瓣</a>
               </div> </router-link>
               <div class="nav-search">
                   <input class="ipt-content" type="text" placeholder="搜索电影、电视剧、综艺、影人">
                  <span class="ipt-btn"><img src="../assets/images/db-search.png" alt=""></span>
               </div>
          </div>
          <div class="nav-second">
             <div class="nav-items">
                <ul>
                   <li><a href="#">影讯&购票</a></li>
                   <li><a href="#">选电影</a></li>
                   <li><a href="#">电视剧</a></li>
                   <li><a href="#">排行榜</a></li>
                   <li><a href="#">分类</a></li>
                   <li><a href="#">影评</a></li>
                   <li><a href="#">2020年度榜单</a></li>
                   <li><a href="#">2020书影音报告</a></li>
                </ul>
             </div>
             <a href="#" class="photo"></a>
          </div>
      </div>
   </div>
   <router-view></router-view>
   </div>
</template>

<script>
export default {

}
</script>

<style >
   .db-nav{
    position: relative;
    width: 100%;
    min-width: 1040px;
    overflow: hidden;
    margin-bottom: 40px;
    background-color: #f0f3f5;
   }
  .db-wrap{
      border-bottom: 1px solid #e5ebe4;
  }
   .nav-primary{
      width: 1040px;
      margin: 0 auto;
      overflow: visible !important;
      position: relative;
      padding: 10px 0 38px;
   }
   .nav-logo{
      float: left;
      height: 56px;
      width: 145px;
      margin: 0 13px 0 0;
      background: url(../assets/images/db-logo.png) no-repeat 0 12px;
   }
   .nav-logo a{
       line-height: 100em;
    }
   .nav-search{
      margin-left: 145px;
      position: relative;
      padding: 10px 0 15px 0;
   }
   .ipt-content{
      position: relative;
      float: left;
      background: #fff;
      width: 465px;
      margin: 0;
      text-align: left;
      height: 30px;
      padding-left: 10px;
      border-radius: 5px;
      border: none;
      outline: none;
   }
   .ipt-btn{
      position: absolute;
      left: 458px;
      width: 35px;
      height: 30px;
      border-top-right-radius: 5px;
      border-bottom-right-radius: 5px;
      background-color: #8B949E;
   }
   .ipt-btn img{
         width: 18px;
         height: 18px;
         margin: 6px 8px;
      }
   .nav-second{
      width: 1040px;
      margin: 0 auto;
   }
   .nav-items li{
      float: left;
      font-size: 14px;
      padding: 10px 25px 10px 0;
   }
   .nav-items li a{ 
           color: #27a;
    }
   .nav-items li a:hover{
      background-color: #27a;
      color: #fff;
   }
   .photo{
            position: absolute;
            width: 186px;
            height: 96px;
            top: 10px;
            left: 50%;
            margin-left: 200px;
            background: url(../assets/images/db-2020.png) center/contain no-repeat;
         }
</style>