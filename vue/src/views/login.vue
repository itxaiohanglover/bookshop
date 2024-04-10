<template>
  <div class="wrapper">
    <div class="login-container">
      <div style="width: 400px; margin: 150px auto">
        <div>
          <img src="../../public/logo.png" style="width:65px;height:65px;position:absolute;margin-left:9%;" alt="">
        </div>
        <div style="color: white; font-size: 34px;  padding: 10px 0 10px 34%;font-family:SimHei;font-weight:500;">
          云边书香
        </div>
        <el-form ref="user" :model="user" :rules="rules" size="large">
          <el-form-item class="username" prop="username">
            <el-input placeholder="请输入用户名" v-model="user.username" clearable prefix-icon="avatar"></el-input>
          </el-form-item>
          <el-form-item class="password" prop="password">
            <el-input placeholder="请输入密码" v-model="user.password" prefix-icon="lock" show-password></el-input>
          </el-form-item>
          <el-form-item :model="user" class="identity" prop="identity">
            <el-radio v-model="radio" label="1" style="color:rgb(254, 254, 254)">商家</el-radio>
            <el-radio v-model="radio" label="2" style="color:rgb(254, 254, 254)">顾客</el-radio>
            <el-radio v-model="radio" label="3" style="color:rgb(254, 254, 254)">管理员</el-radio>
          </el-form-item>
          <el-form-item>
            <el-button style="margin-left:16%;background: linear-gradient(135deg, #6e8efb, #a777e3);" type="primary"
              @click="login">登录</el-button>
            <el-button style="width: 20%;margin-left:20%;background: linear-gradient(135deg, #6e8efb, #a777e3);"
              type="primary" @click="$router.push('/register')">注 册</el-button>
          </el-form-item>
        </el-form>
      </div>
    </div>

    <div class="videoContainer">
      <video class="fullscreenVideo" id="bgVid" playsinline="" autoplay="" muted="" loop="">
        <source src="../assets/video/spa.mp4" type="video/mp4">
      </video>
    </div>
  </div>



      <!-- <div class="login-container">
      <div style="margin: 20px 0; text-align: center; font-size: 24px"><b>登录</b></div>
      <el-form :model="user" :rules="rules" ref="user">
        <el-form-item prop="username">
          <el-input size="medium" style="margin: 10px 0" prefix-icon="el-icon-user" v-model="user.username"></el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input size="medium" style="margin: 10px 0" prefix-icon="el-icon-lock" show-password
            v-model="user.password"></el-input>
        </el-form-item>
        <el-form-item style="text-align: center">
          <el-radio v-model="radio" label="1">商家</el-radio>
          <el-radio v-model="radio" label="2">顾客</el-radio>
          <el-radio v-model="radio" label="3">管理员</el-radio>
        </el-form-item>
        <el-form-item style="margin: 10px 0; text-align: center">
          <el-button type="warning" size="small" autocomplete="off" @click="$router.push('/register')">注册</el-button>
          <el-button type="primary" size="small" autocomplete="off" @click="login" style="margin-left: 20%">登录
          </el-button>
        </el-form-item>
      </el-form>
    </div> -->
</template>

<script>

export default {
  name: "login",
  data() {
    return {
      radio: "1",
      user: {}, // 存储账号、密码、身份
      rules: {
        username: [
          { required: true, message: '请输入用户名', trigger: 'blur' },
          { min: 3, max: 10, message: '长度在 3 到 5 个字符', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur' },
          { min: 1, max: 20, message: '长度在 1 到 20 个字符', trigger: 'blur' }
        ],
      }
    }
  },
  methods: {
    login() {
      this.user.role = parseInt(this.radio)
      this.$refs['user'].validate((valid) => {
        // 表单校验合法
        if (valid) {
          this.request.post("http://localhost:9090/user/login", this.user).then(res => {
            if (res.code === '200') {
              // 注意，此处获取到的user应为userDTO
              localStorage.setItem("user", JSON.stringify(res.data))  // 存储用户信息到浏览器
              console.log("登录后存储用户信息：", localStorage.getItem("user"))
              if (this.radio === "1")
                this.$router.push("/manage")
              else if (this.radio === "2")
                this.$router.push("/store")
              else if (this.radio === "3")
                this.$router.push("/admin")
              this.$message.success({ message: "登陆成功", duration: 1200 })
            } else {
              this.$message.error(res.msg)
            }
          })
        }
      });
    }
  }
}
</script>

<style scoped>
.wrapper {
  /* height: 100vh; */
  /* background-image: linear-gradient(to bottom right, #6746fc, #fb3f55); */
  /* overflow: hidden; */
}

.login-container {
  height: 50vh;
  width: 60vh;
  background-color: rgb(232 231 219 / 25%);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  display: flex;
  justify-content: center;
  align-items: center;

}

.el-button:hover {
  box-shadow: 0 5px 10px rgba(129, 129, 129, 0.3);
}


.videoContainer {
  position: fixed;
  width: 100%;
  height: 100%;
  overflow: hidden;
  z-index: -100;
}

.videoContainer:before {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  display: block;
  z-index: -1;
  top: 0;
  left: 0;
  background: rgba(25, 29, 34, .65);
}

video#bgVid {
  width: 100%;
}


.username,
.password {
  width: 80%;
  margin: 6% auto 3%;
}

.identity {
  margin-left: 10%;
}
</style>
