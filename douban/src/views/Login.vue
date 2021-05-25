<template>
  <div class="login">
      <div class="head">
        <div class="doubannav">
           <a href="#">
               <img src="../assets/images/douban_logo.png" alt="" width="142">
           </a>
        </div>
        <div class="doubancon">
            <div class="douleft">
            </div>
            <div class="doubanright"> 
                <div class="db-login">
                    <div class="login-tabs" >
                       <span :class="num==index?'on phone':'phone'" @click="changeTab(index)" v-for="(item,index) in tabs" :key="index">{{item}}</span>
                    </div>
                    <div class="login-con" v-show="show1">
                        <input type="text" class="number" placeholder="用户名" v-model="user">
                         <input type="text" class="psw" placeholder="密码" v-model="psw"> 
                         <button class="login-btn" @click="register">注册豆瓣</button>
                    </div>
                      <div class="login-con" v-show="show2">
                        <input type="text" class="number" placeholder="用户名" v-model="users">
                         <input type="password" class="psw" placeholder="密码" v-model="psws">
                         <button class="login-btn" @click="login">登录豆瓣</button>
                    </div>
                </div>
            </div>
        </div>
      </div>
  </div>
</template>

<script>
export default {
data() {
      return {
        num:0,
        tabs:['注册','密码登录'],
        user:'',
        psw:'',
        users:'',
        psws:'',
        show1:true,
        show2:false
    }
},
    methods: {
    submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            alert('submit!');
          } else {
            console.log('error submit!!');
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      changeTab(i){
        this.num=i
        if(i==0){
             this.show1=true
             this.show2=false
        }else{
             this.show1=false
            this.show2=true  
        }
    },
    register(){
        let that=this
        if(this.user!=''&&this.psw!=''){
             this.axios.post('http://localhost:3000/register',{
                admin:that.user,
                psw:that.psw
            }).then(res=>{
                console.log(res);
            }).catch(err=>{
                console.log(err);
            })
                alert('注册成功,请登录')
            }else{
                alert('输入格式不对哦')
            }
    },
    login(){
        let that=this
    this.axios.post('http://localhost:3000/login',{
                    admins:that.users,
                    psws:that.psws
                }).then(res=>{
                    if(res.data.code==1){
                        alert('登录失败，请重新输入')
                    }else{
                        alert('登录成功')
                        this.$router.push({path:'/'})
                        sessionStorage.setItem('name',that.users)
                    }
                }).catch(err=>{
                    console.log(err);
                })
    }
  }
}
</script>

<style lang="css" scoped>
.login .head{
    position: relative;
    background: #edf4ed;
}
.doubannav{
    width: 1040px;
    margin: 0 auto;
    overflow: hidden;
    padding: 22px 0 20px;
}
.doubancon{
    width: 1002px;
    margin: 124px auto 0;
    position: relative;
}
.douleft{
    display: inline-block;
    height: 584px;
    width: 494px;
    position: relative;
    left: 50%;
    margin-left: -432px;
    vertical-align: top;
    background: url(../assets/images/douban.png) 0 0 no-repeat;;
    background-size: 92%;
    top: -40px;
    overflow: visible;
}
.doubanright{
    display: inline-block;
    border: 1px solid #d8d8d8;
    width: 340px;
    position: relative;
    left: 50%;
    margin-top: 25px;
    margin-left: -46px;
    vertical-align: top;
}
.db-login{
    width: 340px;
    padding: 50px 30px 100px;
    overflow: hidden;
    position: relative;
    background: #fff;
}
.login-tabs{
    margin-bottom: 10px;
    color: #9b9b9b;
    border-bottom: 1px solid #ececec;
}
.login-tabs span{
    display: inline-block;
    width: 50%;
    font-size: 18px;
    line-height: 2;
    text-align: center;
    cursor: pointer;
}
.on{
    border-bottom: 2px solid #494949;
    color: #333;
    font-weight: 600;
}
.login-con{
    margin-top: 30px;
}
.login-con .login-btn{
    width: 280px;
    height: 36px;
    text-align: center;
    font-weight: 600;
    border: none;
    color: #fff;
    margin-top: 20px;
    font-size: 15px;
    background-color: rgba(66,189,86,.5);
}
.login-con input{
    width: 280px;
    font-size: 13px;
    padding: 10px;
    border-radius: 3px;
    box-sizing: border-box;
    border: 1px solid #e4e6e5;
    margin-bottom: 10px;
    outline: none;
}
</style>