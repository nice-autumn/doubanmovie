<template>
   <div>
   <div class="db-nav">
      <div class="db-wrap">
          <div class="nav-primary">
                 <router-link to="/Homewrapper">
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
                   <li><a href="#"> <router-link to="/Buyticket">影讯&购票 </router-link></a></li>
                   <li><a href="#"> <router-link to="/Choicemovie">选电影</router-link></a></li>
                   <li><a href="#">  <router-link to="/Tvplay">电视剧</router-link></a></li>
                   <li><a href="#">  <router-link to="/Ranklist">排行榜 </router-link></a></li>
                   <li><a href="#">  <router-link to="/Classify">分类</router-link></a></li>
                   <li><a href="#">  <router-link to="/Filmreview">影评</router-link></a></li>
                   <li><a href="https://movie.douban.com/annual/2020?source=navigation">2020年度榜单</a></li>
                   <li><a href="https://movie.douban.com/annual/2020?source=movie_navigation">2020书影音报告</a></li>
                </ul>
             </div>
             <a href="#" class="photo"></a>
          </div>
      </div>
   </div>
   <router-view></router-view>
    <div class="footer">
      <span class="footer-left">
    © 2005－2021 douban.com, all rights reserved 北京豆网科技有限公司</span>
      <span class="footer-right">
           <a href="https://www.douban.com/about">关于豆瓣</a>
         · <a href="https://www.douban.com/jobs">在豆瓣工作</a>
         · <a href="https://www.douban.com/about?topic=contactus">联系我们</a>
         · <a href="https://www.douban.com/about/legal">法律声明</a>
         · <a href="https://help.douban.com/?app=movie" target="_blank">帮助中心</a>
         · <a href="https://www.douban.com/doubanapp/">移动应用</a>
         · <a href="https://www.douban.com/partner/">豆瓣广告</a>
      </span>
   </div>
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
   .footer{
   width: 1040px;
    margin: 0 auto;
    color: #999;
    font-size: 12px;
    padding: 6px 0;
    margin-top: 40px;
    overflow: hidden;
    border-top: 1px dashed #ddd;
   }
   .footer-left{
     float: left;
   }
   .footer-right{
     float: right;
   }
</style>