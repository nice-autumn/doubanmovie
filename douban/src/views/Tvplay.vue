<template>
  <div class="tvplay">
     <div class="choi">
        <div class="tv-frame">
            <h1>热门电视剧</h1>
            <div class="lefttv">
              <div class="choi-title">
                <div class="choi-tabs">
                <ul>
                  <li :class="num==index?'tabslist active':'tabslist'"  v-for="(item,index) in tabs" :key="index" @click="getTab1(item,index)">{{item}}</li>
                </ul>
              </div>
              <div class="choi-tool">
                <div class="choi-sort">
                  <div class="choi-lab">
                    <el-radio v-model="radio" label="1">按热度排序</el-radio>
                  </div>
                    <div class="choi-lab">
                      <el-radio v-model="radio" label="2">按时间排序</el-radio>
                  </div>
                    <div class="choi-lab">
                      <el-radio v-model="radio" label="3">按评价排序</el-radio>
                  </div>
                </div>
                <div class="choi-check">
                    <div class="choi-lab">
                      <input type="checkbox" class="tv-box">我没看过的  
                  </div>
                    <div class="choi-lab">
                      <input type="checkbox" class="tv-box">可在线播放
                  </div>
                </div>
              </div>
              </div>
              <!-- 电影列表 -->
              <div class="choi-list">
                        <ul class="carousel-con">
                          <li
                            class="carousel-item"
                            v-for="(item, index) in list"
                            :key="index">
                            <div class="img-frame">
                              <img :src="item.pic" alt="" />
                            </div>
                            <p class="item-title">{{ item.title }}
                              <span class="item-score">{{ item.score }}</span>
                            </p>
                          </li>
                        </ul>
              </div>
            </div>  
            <div class="right-tv">
              <h2>喜欢看电视剧的人常去的小组· · · · · ·</h2>
              <div class="group">
                <ul>
                  <li class="gro-con" v-for="(gro,index) in groups" :key="index">
                    <div class="gro-img">
                      <img  :src="gro.pic" alt="">
                    </div>
                    <p class="gro-title">{{gro.name}}
                     <span>{{gro.num}}</span> 
                    </p>
                  </li>
                </ul>
              </div>
            </div>
        </div>
          <div class="choi-more" v-show="show" @click="getMuch1">加载更多</div> 
    </div>
  </div>
</template>

<script>
export default {
  data(){
   return{
     tab1:'',
     tabs:['热门','美剧','英剧','韩剧','日剧','国产剧','港剧','日本动画','综艺','纪录片'],
     num:0,
     more:0,
     list:[],
     lists:[],
     show:true,
     radio: '3',
     groups:[]
   }
 },
  mounted(){
    this.getData1()
    this.getGroup()    
        },
 methods:{
    getTab1(txt,i){
      this.list = []
      this.num=i
      this.tab1=txt=='热门'?'HOT':txt=='美剧'?'USA':txt=='英剧'?'ENG':'CHA'
      localStorage.setItem('name1',this.tab1)
      this.getData1(this.tab1)
    },
      getData1(tab1='HOT',more1=0){  
       this.axios.get("http://localhost:3000/changetv", 
    {  params:{
        tab1,
        more1
      }})
      .then((res) => {
        this.lists = res.data;
        this.list=[...this.list,...this.lists]
      }).catch((err) => {
        console.log(err);
      });
    },
    getMuch1(){
      this.more++
      console.log(localStorage.getItem('name1'), this.more++);
      this.getData1(localStorage.getItem('name1'),this.more)
    },
  getGroup(){
     this.axios.get("http://localhost:3000/grouptv")
      .then((res) => {
        this.groups= res.data;
      }).catch((err) => {
        console.log(err);
      });
  }
 }
}
</script>

<style lang='css' scoped>
.choi{
  width: 1040px;
  margin: 0 auto;
  overflow: hidden;
}
.tv-frame{
  width: 1040px;
  overflow: hidden;
}
.lefttv{
  float: left;
}
.choi-title{
  width: 675px;
  margin-top: 8px
}
.choi-tabs{
  overflow: hidden;
  width: 675px;
}
.tabslist{
  float: left;
  padding: 1px 10px;
  margin: 0 3px 5px 0;
  color: #666;
  font-size: 14px;
  border-radius: 2px;
  background: none;
  cursor: pointer;
}
.tabslist:hover{
  background-color: #eee;
}
.choi-tool{
  border-top: 1px solid #eee;
    margin-top: 15px;
    padding: 15px 0;
    overflow: hidden;
    font-size: 13px;
    color: #666;
}
.choi-sort{
  float: left;
  padding-left: 5px;
}
.choi-check{
  float: right;
}
.choi-lab{
  float: left;
  margin-right: 20px;
}
.tv-box{
  position: relative;
  right: 4px;
  top: 1px;
}
/* 单选 */
::v-deep .el-radio__label{
 padding-left: 3px;
}
::v-deep .el-radio__input.is-checked+.el-radio__label{
  color: #000;
}
.active{
  background: #4b8ccb;
  color: #fff;
}
.active:hover{
  background: #4b8ccb;
  color: #fff;
} 
.choi-list{
 width: 675px;
}
.carousel-con {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.carousel-item {
  margin-top: 10px;
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
.item-score {
  color: #e09015;
  font-size: 12px;
  margin-left: 2px;
}
.choi-more{
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
/* 右边 */
.right-tv{
  float: right;
  width: 300px;
}
.right-tv h2{
  font: 15px Arial, Helvetica, sans-serif;
  font-size: 16px;
  color: #072;
  margin: 0 0 12px 0;
  line-height: 150%;
}
.gro-con{
  width: 75px;
  margin: 0 0 10px 0;
  float: left;
  text-align: center;
  font-size: 13px;
}
.gro-img{
  margin: 0;
  overflow: hidden;
  text-align: center;
  height: 50px;
}
.gro-img img{
  max-width: 100%;
}
.gro-title{
  color: #37a;
}
.gro-title span{
  white-space: nowrap;
  color: #000;
}
</style>