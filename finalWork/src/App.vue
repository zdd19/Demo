<template>
  <div id="app">
    <el-container class="app-container">
      <el-header>
        <div class="header">
          <el-col :span="3" class="header-logo" :offset="3">
            <img src="../src/assets/img/dog-logo.png" class="logo-img" />
            <span class="header-span logo-span">狗狗网</span>
          </el-col>
          <el-col :span="2">
            <router-link to="/Index" class="header-link">
              <span class="header-span" @mouseover="show3 = false">首页</span>
            </router-link>
          </el-col>
          <el-col :span="2">
            <router-link to="/Encyclopedias" class="header-link">
              <span class="header-span" @mouseover="show3 = true">
                百科
                <!-- <i class="el-icon-caret-bottom" style="color:#b2bec3;margin-left:5px"></i> -->
              </span>
            </router-link>
          </el-col>
          <el-col :span="2">
            <router-link to="/Information" class="header-link">
              <span class="header-span" @mouseover="show3 = false">资讯</span>
            </router-link>
          </el-col>
          <el-col :span="2">
            <router-link to="/Conserve" class="header-link">
              <span class="header-span" @mouseover="show3 = false">养护中心</span>
            </router-link>
          </el-col>
          <el-col :span="2">
            <router-link to="/Transaction" class="header-link">
              <span class="header-span" @mouseover="show3 = false">交易中心</span>
            </router-link>
          </el-col>
          <el-col :span="2">
            <router-link to="/Chat" class="header-link">
              <span class="header-span" @mouseover="show3 = false">养宠心得</span>
            </router-link>
          </el-col>
          <el-col :span="2" :offset="1" class="user">
            <el-badge :value="0" class="item">
              <i class="el-icon-bell"></i>
            </el-badge>
            <el-badge :value="0" class="item">
              <i class="el-icon-chat-round"></i>
            </el-badge>
            <el-dropdown trigger="hover" class="user-header">
              <el-avatar shape="square" :src="squareUrl"></el-avatar>
              <el-dropdown-menu slot="dropdown">
                <el-dropdown-item class="clearfix">
                  <i class="el-icon-bell"></i>通知
                  <el-badge class="mark" :value="0" />
                </el-dropdown-item>
                <el-dropdown-item class="clearfix">
                  <i class="el-icon-chat-round"></i>消息
                  <el-badge class="mark" :value="0" />
                </el-dropdown-item>
              </el-dropdown-menu>
            </el-dropdown>
          </el-col>
        </div>
      </el-header>

      <!-- </el-container> -->
      <el-row>
        <router-view></router-view>
      </el-row>
      <!-- <footer class="footer"></footer> -->
    </el-container>
  </div>
</template>

<script>
import userImg from "../src/assets/img/bage/1.jpg";
export default {
  name: "app",
  components: {},
  data() {
    return {
      squareUrl: userImg
    };
  }
};
</script>

<style scoped>
.app-container /deep/ .el-header {
  padding: 0;
}
.header {
  position: fixed;
  width: 100%;
  height: 60px;
  display: flex;
  text-align: center;
  background: #ffffff;
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
  z-index: 1000;
}
.header-logo {
  display: flex;
  align-items: center;
}
.logo-img {
  height: 100%;
}
.header-link {
  display: flex;
  justify-content: center;
  align-items: center;
  text-decoration: none;
  height: 60px;
}
.header-link:hover {
  background: gray;
  transition: 0.5s;
  -webkit-transition: 0.5s;
}
.header-span {
  font-size: 16px;
  color: #b2bec3;
}
.logo-span {
  margin-left: 16px;
  font-size: 20px;
}
.baike-content {
  background-color: rgba(45, 52, 54, 0.5);
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  width: 100%;
  position: absolute;
  z-index: 100;
}
.baike-content .el-row {
  width: 100%;
}
.baike-content-firstline {
  text-align: center;
  margin-top: 10px;
}
.baike-content-secondline {
  text-align: center;
}
.baike-span {
  text-align: center;
}
.baike-img {
  width: 120%;
  height: 70%;
  border-radius: 50%;
  border: 1px solid white;
}
.transition-box {
  text-decoration: none;
  border-radius: 4px;
  text-align: center;
  color: #fff;
  box-sizing: border-box;
  margin-left: 11px;
}
.user {
  display: flex;
  justify-content: flex-end;
}
.item {
  cursor: pointer;
  margin-top: 22px;
  margin-right: 27px;
}
.user-header {
  cursor: pointer;
  margin-top: 10px;
}
.footer {
  margin-top: 30px;
  height: 100px;
  width: 100%;
  background-color: #2d3436;
}
</style>
