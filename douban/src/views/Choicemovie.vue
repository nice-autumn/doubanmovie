<template>
  <div class="choicemovie">
      <div class="choi">
        <h1>选电影</h1>
        <div class="choi-title">
           <div class="choi-tabs">
          <ul>
            <li :class="num==index?'tabslist active':'tabslist'"  v-for="(item,index) in tabs" :key="index" @click="getTab(item,index)">{{item}}</li>
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
                        <img :src="item.photo" alt="" />
                      </div>
                      <p class="item-title">{{ item.name }}
                         <span class="item-score">{{ item.score }}</span>
                      </p>
                    </li>
                  </ul>
        </div>
        <div class="choi-more" v-show="show" @click="getMuch">加载更多</div> 
    </div>
  </div>
</template>

<script>
export default {
 data(){
   return{
     tab:'',
     tabs:['热门','最新','经典','可播放','豆瓣高分','冷门佳片','华语','欧美','韩国','日本',
     '动作','喜剧','爱情','科幻','悬疑','恐怖','动画'],
     num:0,
     more:0,
     list:[],
     lists:[],
     show:true,
     radio: '3'
   }
 },
  mounted(){
          this.getData1()
        },
 methods:{
    getTab(txt,i){
      this.list = []
      this.num=i
      this.tab=txt=='热门'?'hot':txt=='最新'?'new':txt=='经典'?'classics':txt=='豆瓣高分'?'high':'cold'
      localStorage.setItem('name',this.tab)
      this.getData1(this.tab)
    },
      getData1(tab='hot',more=2){  
       this.axios.get("http://localhost:3000/tabs", 
    {  params:{
        tab,
        more
      }})
      .then((res) => {
        this.lists = res.data;
        this.list=[...this.list,...this.lists]
      }).catch((err) => {
        console.log(err);
      });
    },
    getMuch(){
      this.more++
      this.getData1(localStorage.getItem('name'),this.more)
    }
 }
}
</script>

<style lang='css' scoped>
.choi{
  width: 1040px;
  margin: 0 auto;
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
</style>