<template>
  <div class="billboard">
     <div class="bill-big">
         <a href="#">豆瓣电影评分八问</a>
     </div>
     <div class="bill-week">
         <h2>一周口碑榜
             <span><a href="#">更多榜单»</a></span>
         </h2>
     </div>
     <div class="bill-list">
         <ul >
             <li class="bill-con" v-for="(data,index) in ranks" :key="index">
                 <span class="bill-num">{{data.rank}}</span>
                 <span class="bill-title"><a href="#">{{data.subject.title}}</a> </span>
             </li>
         </ul>
     </div>
  </div>
</template>

<script>
export default {
    data(){
      return{
        ranks:[]
      }
    },
    mounted(){
        this.getRank()
    },
   methods:{
     getRank(){
         this.axios.get('http://api.douban.com/v2/movie/weekly?apikey=0df993c66c0c636e29ecbb5344252a4a').then((res)=>{
             this.ranks=res.data.subjects
         }).catch((err)=>{
             console.log(err);
         })
     }
   }
}
</script>

<style>
 .billboard a {
    color: #37a;
    background: 0 0;
    text-decoration: none;
    outline: 0;
    cursor: pointer;
    transition: color .2s ease;
}
.billboard a:hover{
  background-color: #27a;
  color: #fff;
}
.bill-big{
    margin: 0 0 20px;
    padding: 12px 0 12px 18px;
    line-height: 1.5;
    background: #f2f7f6;
    border-radius: 4px;
    width: 300px;
}
.bill-week h2{
    font-weight: normal;
    font-size: 16px;
    margin-bottom: 5px;
    color: #111;
    padding-bottom: 10px;
    border-bottom: 1px solid #eaeaea;
}
.bill-week span a{
    font-size: 13px;
    margin-left: 5px;
}
.bill-con{
    padding: 7px 0;
    border-bottom: 1px solid #eaeaea;
}
.bill-title{
    padding-left: 5px;
}
</style>