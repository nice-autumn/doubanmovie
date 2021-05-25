import Vue from 'vue'
import VueRouter from 'vue-router'
import ViewUI from 'view-design';
import 'view-design/dist/styles/iview.css';
import Homewrapper from '../views/Homewrapper.vue'
import Buyticket from '../views/Buyticket.vue'
import Choicemovie from '../views/Choicemovie.vue'
import Tvplay from '../views/Tvplay.vue'
import Ranklist from '../views/Ranklist.vue'
import Classify from '../views/Classify.vue'
import Filmreview from '../views/Filmreview.vue'
import Login from '../views/Login.vue'
import Total from '../views/Total.vue'

Vue.use(VueRouter)
Vue.use(ViewUI);

const routes = [
  {
    path:'/',   //豆瓣电影
    name:'Total',
    component:Total,
      children:[
        {
          path:'/Homewrapper',   //豆瓣电影
          name:'Homewrapper',
          component:Homewrapper,
          alias:'/',
          meta:{
            title:'豆瓣电影'
          }
          },
          {
            path:'/Buyticket',  //影讯&购票
            name:'Buyticket',
            component:Buyticket,
            meta:{
              title:'郑州 - 在线购票&影讯'
            }
          },
          {
            path:'/Choicemovie',  //选电影
            name:'Choicemovie',
            component:Choicemovie,
            meta:{
              title:'选电影'
            }
          },
          {
            path:'/Tvplay',  //电视剧
            name:'Tvplay',
            component:Tvplay,
            meta:{
              title:'热门电视剧'
            }
          },
          {
            path:'/Ranklist',  //排行榜
            name:'Ranklist',
            component:Ranklist,
            meta:{
              title:'豆瓣电影排行榜'
            }
          },
          {
            path:'/Classify',  //分类
            name:'Classify',
            component:Classify,
            meta:{
              title:'选影视'
            }
          },
          {
            path:'/Filmreview',   //影评
            name:'Filmreview',
            component:Filmreview,
            meta:{
              title:'豆瓣最受欢迎的影评'
            }
          },
      ]
  },
   {
        path:'/Login',   //登录
        name:'Login',
        component:Login,
        meta:{
          title:'登录'
        }
      }
    ]


const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
