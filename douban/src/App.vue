<template>
  <div id="app">
   <router-view v-wechat-title='$route.meta.title'></router-view>
  </div>
</template>
<script>

export default{
  created(){
    if(this.$router.path!=="/Homewrapper"){
      this.$router.replace('/Homewrapper')
    }
  }
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
  cursor: pointer;
}
</style>
