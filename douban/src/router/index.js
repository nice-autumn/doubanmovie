import Vue from 'vue'
import VueRouter from 'vue-router'
import ViewUI from 'view-design';
import 'view-design/dist/styles/iview.css';
import Homewrapper from '../views/Homewrapper.vue'

Vue.use(VueRouter)
Vue.use(ViewUI);

const routes = [
  {
    path:'',
    name:'Homewrapper',
    component:Homewrapper
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
