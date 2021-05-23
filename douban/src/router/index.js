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

Vue.use(VueRouter)
Vue.use(ViewUI);

const routes = [
    {
      path:'/Homewrapper',   //豆瓣电影
      name:'Homewrapper',
      component:Homewrapper,
      },
      {
        path:'/Buyticket',  //影讯&购票
        name:'Buyticket',
        component:Buyticket,
      },
      {
        path:'/Choicemovie',  //选电影
        name:'Choicemovie',
        component:Choicemovie,
      },
      {
        path:'/Tvplay',  //电视剧
        name:'Tvplay',
        component:Tvplay,
      },
      {
        path:'/Ranklist',  //排行榜
        name:'Ranklist',
        component:Ranklist,
      },
      {
        path:'/Classify',  //分类
        name:'Classify',
        component:Classify,
      },
      {
        path:'/Filmreview',   //影评
        name:'Filmreview',
        component:Filmreview,
      },
    ]


const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
