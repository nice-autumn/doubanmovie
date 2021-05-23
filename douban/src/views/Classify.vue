<template>
  <div class="classify">
       <h1>选影视</h1>
           <div class="cla-tab">
               <ul class="tags">
                   <li v-for="(item1,index) in tags1" :key="index">
                      <span :class="num==index?'caption cap-checked':'caption'" @click="change(index)">{{item1}}</span> </li>
               </ul>
               <ul class="tags">
                <li v-for="(item2,index) in tags2" :key="index">
                   <span :class="num==index?'caption cap-checked':'caption'" @click="change(index)">{{item2}}</span> </li>
            </ul>
            <ul class="tags">
                <li v-for="(item3,index) in tags3" :key="index">
                   <span :class="num==index?'caption cap-checked':'caption'" @click="change(index)">{{item3}}</span> </li>
            </ul>
            <ul class="tags">
                <li v-for="(item4,index) in tags4" :key="index">
                   <span :class="num==index?'caption cap-checked':'caption'" @click="change(index)">{{item4}}</span> </li>
            </ul>
            <ul class="tags">
                <li v-for="(item5,index) in tags5" :key="index">
                   <span :class="num==index?'caption cap-checked':'caption'" @click="change(index)">{{item5}}</span> </li>
            </ul>
           </div>
           <div class="tags-nav">
               <div class="navleft" @click="different(index)">
                   <a href="#" class="tab-checked">近期热门</a>
                   <a href="#">标记最多</a>
                   <a href="#">评分最高</a>
                   <a href="#">最新上映</a>
               </div>
               <div class="navchecked">
                   <input type="checkbox">可播放
                   <input type="checkbox" >我没看过
                   <span>评分区间筛选</span>
                       <span class="box" style="background-size: 16px;"></span>
                   <span class="menu" style="background-size: 16px;"></span>
               </div>
 
           </div>
           <div class="list-cl">
              <ul>
                  <li class="list-con" v-for="(cla,index) in items" :key="index">
                    <div class="fy-img">
                       <img :src="cla.photo" alt="">
                    </div>
                      <p>
                          <span class="title">{{cla.name}}</span>
                          <span class="score">{{cla.score}}</span>
                      </p>
                  </li>
              </ul>
           </div>    
           <div class="choi-more" v-show="show" @click="getMuch2">加载更多</div>        
   </div>
</template>

<script>
export default {
  data(){
    return{
    tags1:['全部形式','电影','电视剧','综艺','动漫','纪录片','短片'],
    tags2:['全部类型','剧情','喜剧','动作','爱情','科幻','动画','悬疑','惊悚','恐怖',
    '犯罪','同性','音乐','歌舞','传记','历史','战争','西部','奇幻','冒险','灾难','武侠','情色'],
    tags3:['全部地区','中国大陆','欧美','美国','中国香港','中国台湾','日本','韩国','英国',
    '法国','德国','意大利','西班牙','印度','泰国','俄罗斯','伊朗','加拿大','澳大利亚','爱尔兰','瑞典','巴西','丹麦'],
    tags4:['全部年代','2021','2020','2019','2021年代','2000年代','90年代','80年代','70年代','60年代','更早'],
    tags5:['全部特色','经典','青春','文艺','搞笑','励志','魔幻','感人','女性','+自定义标签'],
    num:0,
    num1:0,
    classify:[],
    show:true,
    items:[]
    }
  },
  mounted(){
   this.getTvs()
  },
     methods:{
      change(i){
          this.num=i
      },
      // different(n){
      //     this.num1=n
      // }
      getTvs(){
        this.axios.get("http://localhost:3000/items", 
    {  params:{
        page1:3,
        num1:20
      }})
      .then((res) => {
        console.log(res.data);
        this.classify = res.data;
        this.items=[...this.items,...this.classify]
      }).catch((err) => {
        console.log(err);
      });
      },
      getMuch2(){
      this.page1++
      console.log(this.page1++);
      this.getTvs(this.page)
    },
    }
}
</script>

<style>
  .classify{
  width: 1040px;
  margin: 0 auto;
  }
  .classify h1{
  font-size: 26px;
  padding-bottom: 18px;
  }
  .cla-tab{
    width: 675px;
      margin-bottom: 28px;
  }
  .tags{
      margin-bottom: 17px;
      line-height: 22px;
  }
  .tags li{
      display: inline-block;
      color: #333;
      margin-right: 4px;
      padding-top: 3px;
  }
  .caption{
      cursor: pointer;
      font-size: 14px;
      padding: 2px 10px;
      line-height: 20px;
      border-radius: 2px;
  }
  .cap-checked{
  opacity: .8;
  background: #258dcd;
  color: #fff;
  }
  .cap-checked:hover{
  background: #258dcd;
  color: #fff!important;
  }
  .caption:hover {
    color: #258dcd;
  }
  .tags:last-child li:last-child {
   color: #999;
  }
  .tags-nav{
    width: 675px;
    height: 30px;
    font-size: 13px;
    color: #999;
    position: relative;
    margin-right: 25px;
}
.navleft{
    overflow: hidden;
    border-radius: 2px;
    display: inline-flex;
}
.navleft a{
    color: #999;
    float: left;
    display: block;
    text-align: center;
    line-height: 13px;
    text-decoration: none;
    padding: 7.5px 15px;
    border-top: 1px solid #dfdfdf;
    border-bottom: 1px solid #dfdfdf;
}
.navleft a:first-child{
    border-left: 1px solid #dfdfdf;
}
.navleft a:last-child{
    border-right: 1px solid #dfdfdf;
}
.tab-checked{
    border-left: 1px solid #258dcd!important;
    border-right: 1px solid #258dcd!important;
    border-top: 1px solid #258dcd!important;
    border-bottom: 1px solid #258dcd!important;
    position: relative;
    border-radius: 2px;
    background: rgba(37,141,205,.05);
    color: #258dcd;
}
.navchecked{
    display: inline-flex;
    line-height: 34px;
    float: right;
    height: 30px;
    position: absolute;
    right: 20px;
    font-size: 13px;
    color: #999;
}
.navchecked input{
    margin-top: 10px;
    margin-right: 3px;
    margin-left: 20px;
}
.navchecked span{
    margin-left: 20px;
}
.navchecked .box{
    margin-top: 7px;
    display: inline-block;
    width: 16px;
    height: 16px;
    background-repeat: no-repeat;
     background: url(../assets/images/box.png);
}
.navchecked .menu{
    display: inline-block;
    width: 16px;
    height: 16px;
    margin-left: 10px;
    margin-top: 7px;
    background-repeat: no-repeat;
    background: url(../assets/images/menu.png);
}
.list-cl{
    width: 675px;
    margin-top: 40px;
}
.list-cl ul{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}
.fy-img{
  width: 115px;
  overflow: hidden;
}
.list-con img{
    width: 115px;
    height: 161px;
}
.list-con p{
    width: 117px;
    font-size: 13px;
    text-align: left;
    color: #333;
    line-height: 18px;
    overflow: hidden;
    margin: 8px 0 20px;
}
.list-con p .title{
    margin-right: 5px;
}
.list-con p .score{
    color: #ffac2d;
}.choi-more{
  width: 675px;
  margin-top: 30px;
  margin-bottom: 32px;
  height: 36px;
  line-height: 36px;
  text-align: center;
  font-size: 12px;
  cursor: pointer;
  background-color: #f5f5f5;
  color: #336699;
}
</style>