<template>
  <div class="filmreview">
       <h1>豆瓣最受欢迎的影评</h1>
    <div class="rankleft">
      <div class="rev-s">
        <p>最受欢迎的 /
          <span>新片评论</span>
       </p>
      </div>
      <div class="rank-con">
        <ul >
         <li class="com-items" v-for="(dis,index) in comments" :key="index">
              <div class="com-img">
                     <img :src="dis.picture" alt="">
                   </div>
                   <div class="revright">
                     <div class="com-content">
                            <div class="com-user">
                                <img :src="dis.userimg" alt="">
                                <a href="#">{{dis.username}}</a>
                                <span class="item-star"></span>
                                <span class="times">{{dis.time}}</span>
                            </div>
                            <div class="rev-info">
                                <h3><a href="#">{{dis.title}}</a></h3>
                                <div class="com-word">
                                    {{dis.content}}
                                    <a href="#">(展开)</a>
                               </div>
                                <div class="action">
                                    <div class="like">
                                        <img src="../assets/images/up.png" alt="">
                                        <span>{{dis.like}}</span>
                                    </div>
                                    <div class="down">
                                        <img src="../assets/images/down.png" alt="">
                                        <span>{{dis.download}}</span>
                                    </div>
                                    <span><a href="#">{{dis.reply}}</a> </span>
                                </div>
                            </div>
                         </div>    
                    </div>
            </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
      return{
        comments:[]
      }
    },
    created() {
        this.getCom()
    },
  methods:{
      getCom(){
      this.axios.get("http://localhost:3000/comment",{
        params:{
          dis:0,
          num:10
        }
      }).then((res)=>{
        console.log(res.data);
        this.comments=res.data
      }).catch((err)=>{
        console.log(err);
      })
    }
  }
}
</script>

<style scoped>
a:hover{
    background-color: #27a;
    color: #fff !important;
}
 .filmreview{
          width: 1040px;
          margin: 0 auto;
          overflow: hidden;
        }
        .filmreview h1{
        font-size: 26px;
        padding-bottom: 18px;
        }
        .rev-s{
          color: 333;
          font-size: 13px;
          padding-bottom:20px;
          border-bottom: 1px solid #eaeaea;
        }
        .rev-s span{
          color: #37a;
        }
        .rankleft{
          width: 675px;
          float: left;
          margin-top: -5px;
        }
        .rankright{
          float: right;
        }
        .com-items{
          margin-bottom: 24px;
          padding-bottom: 24px;
          margin-top: 20px;
           border-bottom: 1px solid #eaeaea;
        }
        .rank-con{
        width: 675px;
        }
        .rank-con ul li:last-child{
          border: 0 none;
        }
        .com-img{
          float: left;
          width: 75px;
          margin-right: 15px;
        }
        .com-img img{
          width: 75px;
        }
        .com-content{
          padding-left: 83px;
        }
        /* 用户图片 */
        .com-user{
        height: 24px;
        }
        .com-user img{
         width: 24px;
        height: 24px;
        vertical-align: middle;
        }
        .com-user a{
        font-size: 13px;
        margin-left: 10px;
        vertical-align: middle;
        color: #37a;
        }
        .item-star {
            display: inline-block;
            margin: 3px 3px 0 0;
            width: 55px;
            height: 11px;
            background: url(../assets/images/star.png) no-repeat;
       }
       .times{
        font-size: 13px;
        margin-left: 10px;
        color: #999;
       }
      .rev-info{
        margin-top: 10px;
        width: 570px;
        font: 13px Helvetica,Arial,sans-serif;
      }
      .rev-info h3 a{
          font-weight: normal;
          font-size: 14px;
          color: #666699;
        }
        .com-word{
          color: #494949;
          line-height: 1.62;
         margin-top: 10px;
         overflow: hidden;
         word-break: break-word;
         cursor: pointer;
        
        }
        /* 喜欢 */
        .action{
          margin-left: 10px;
          margin-top: 18px;
        }
        .action .like,.down{
          color: #37a;
          padding: 4px 6px;
          margin-right:8px;
          border-radius: 2px;
          background-color: #f0f7f9;
          display: inline-block;
          line-height: 1;
        }
        .action img{
            width: 12px;
        }
        .action span{
            font-size: 13px;
    margin-left: 10px;
        }
</style>