<template>
  <div id="app">
    <Doubanhead></Doubanhead>
  </div>
</template>
<script>
import Doubanhead from './components/Doubanhead.vue'

export default{
  components:{
     Doubanhead
  },
//   created(){
//     if(this.$router.path!=="/Homewrapper"){
//       this.$router.replace('/Homewrapper')
//     }
//   }
}
</script>

<style>
*{
  padding: 0;
  margin: 0;
}
li{
  list-style: none;
}
a{
  text-decoration: none;
}
</style>
