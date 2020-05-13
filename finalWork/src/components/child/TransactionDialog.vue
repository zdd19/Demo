<template>
  <div class="TransactionDialog">
    <el-container>
      <el-main>
        <el-row>
          <el-card class="box-card">
            <el-col :span="12">
              <div class="dog-img">
                <el-carousel height="300px" :interval="5000">
                  <el-carousel-item v-for="item in dogMsg.src" :key="item.id">
                    <img style="width:100%;height:100%;" :src="item.url" />
                  </el-carousel-item>
                </el-carousel>
              </div>
            </el-col>
            <el-col :span="12" class="dog-msg-col">
              <div class="dog-msg">
                <div class="dog-msg-title">
                  <span>{{dogMsg.title}}</span>
                </div>
                <div class="dog-msg-browse">
                  <span>浏览次数：{{dogMsg.browse}}</span>
                </div>
                <div>
                  <span style="font-size: 18px;font-weight: bold;">淘狗价：</span>
                  <span
                    style="font-weight:bolder;margin-right: 12px;font-size: 30px;color: #f25618;"
                  >{{dogMsg.price}}</span>
                  <span>/只</span>
                </div>
                <div style="font-size: 16px; color: #4f5050;margin-top:10px">
                  保障值:
                  <span v-for="item in dogMsg.guaranteeValue" :key="item">
                    <i class="el-icon-star-on" style="color:#fdcb6e"></i>
                  </span>
                </div>
                <div class="about-dog">
                  <div class="about-dog-one">
                    <div>
                      <span>在售只数</span>
                    </div>
                    <div>
                      <span style="color: #f25618;">{{dogMsg.sellNumber}}只</span>
                    </div>
                  </div>
                  <div class="about-dog-one">
                    <div>
                      <span>年龄</span>
                    </div>
                    <div>
                      <span style="color: #f25618;">{{dogMsg.age}}</span>
                    </div>
                  </div>
                  <div class="about-dog-one">
                    <div>
                      <span>品种</span>
                    </div>
                    <div>
                      <span style="color: #f25618;">{{dogMsg.shape}}</span>
                    </div>
                  </div>
                  <div class="about-dog-one">
                    <div>
                      <span>防疫</span>
                    </div>
                    <div>
                      <span style="color: #f25618;">{{dogMsg.vaccine}}</span>
                    </div>
                  </div>
                </div>
                <div style="font-size: 14px;color: #4f5050;margin-top:10px">
                  <span>联系人：{{dogMsg.dogHouse}}</span>
                </div>
                <div style="font-size: 14px;color: #4f5050;margin-top:10px">
                  <span>地址：{{dogMsg.address}}</span>
                </div>
                <div class="dog-msg-btn">
                  <el-button type="danger" icon="el-icon-phone" class="btn">
                    <span>电话联系</span>
                  </el-button>
                  <el-button type="success" icon="iconfont iconwechat" class="btn">
                    <span style="margin-left:8px;">微信联系</span>
                  </el-button>
                </div>
              </div>
            </el-col>
          </el-card>
        </el-row>
        <el-row style="margin-top:15px;">
          <el-card class="box-card">
            <div slot="header" class="clearfix">
              <span style="font-size:20px">狗狗信息</span>
            </div>
            <el-col :span="12">
              <div class="dog-information-title">
                <span style="font-size:18px">基本信息</span>
              </div>
              <div class="dog-basic-information">
                <div>
                  <span>品种：{{dogMsg.shape}}</span>
                </div>
                <div>
                  <span>别名：{{dogMsg.anotherName}}</span>
                </div>
                <div>
                  <span>身高：{{dogMsg.height}}</span>
                </div>
                <div>
                  <span>体重：{{dogMsg.weight}}</span>
                </div>
                <div>
                  <span>功能：{{dogMsg.purpose}}</span>
                </div>
                <div>
                  <span>产地：{{dogMsg.from}}</span>
                </div>
              </div>
            </el-col>
            <el-col :span="12">
              <div class="dog-information-title">
                <span style="font-size:18px">详细特征</span>
              </div>
              <div class="dog-basic-information">
                <div>
                  <span>黏人程度：</span>
                  <span v-for="item in dogMsg.lovePeople" :key="item">
                    <i class="el-icon-star-on" style="color:#fdcb6e"></i>
                  </span>
                </div>
                <div>
                  <span>掉毛程度：</span>
                  <span v-for="item in dogMsg.hairOff" :key="item">
                    <i class="el-icon-star-on" style="color:#fdcb6e"></i>
                  </span>
                </div>
                <div>
                  <span>喜叫程度：</span>
                  <span v-for="item in dogMsg.likeShut" :key="item">
                    <i class="el-icon-star-on" style="color:#fdcb6e"></i>
                  </span>
                </div>
                <div>
                  <span>运动量度：</span>
                  <span v-for="item in dogMsg.sport" :key="item">
                    <i class="el-icon-star-on" style="color:#fdcb6e"></i>
                  </span>
                </div>
                <div>
                  <span>友善程度：</span>
                  <span v-for="item in dogMsg.friendly" :key="item">
                    <i class="el-icon-star-on" style="color:#fdcb6e"></i>
                  </span>
                </div>
                <div style="margin-boottom:10px;">
                  <span>可训程度：</span>
                  <span v-for="item in dogMsg.train" :key="item">
                    <i class="el-icon-star-on" style="color:#fdcb6e"></i>
                  </span>
                </div>
              </div>
            </el-col>
          </el-card>
        </el-row>
      </el-main>
    </el-container>
  </div>
</template>

<script>
import samoyeImg1 from "@/assets/img/samoye/1.jpeg";
import samoyeImg2 from "@/assets/img/samoye/2.png";
import samoyeImg3 from "@/assets/img/samoye/3.jpeg";
import samoyeImg4 from "@/assets/img/samoye/4.jpeg";

import alasijiaImg1 from "@/assets/img/alasijia/1.jpg";
import alasijiaImg2 from "@/assets/img/alasijia/2.jpg";
import alasijiaImg3 from "@/assets/img/alasijia/3.jpg";
import alasijiaImg4 from "@/assets/img/alasijia/4.jpg";

import bageImg1 from "@/assets/img/bage/1.jpg";
import bageImg2 from "@/assets/img/bage/2.jpg";
import bageImg3 from "@/assets/img/bage/3.jpg";
import bageImg4 from "@/assets/img/bage/4.jpg";

import bianmuImg1 from "@/assets/img/bianmu/1.jpg";
import bianmuImg2 from "@/assets/img/bianmu/2.jpg";
import bianmuImg3 from "@/assets/img/bianmu/3.jpg";
import bianmuImg4 from "@/assets/img/bianmu/4.jpg";

import bomeiImg1 from "@/assets/img/bomei/1.jpg";
import bomeiImg2 from "@/assets/img/bomei/2.jpg";
import bomeiImg3 from "@/assets/img/bomei/3.jpg";
import bomeiImg4 from "@/assets/img/bomei/4.jpg";

import chaiquanImg1 from "@/assets/img/chaiquan/1.jpg";
import chaiquanImg2 from "@/assets/img/chaiquan/2.jpeg";
import chaiquanImg3 from "@/assets/img/chaiquan/3.jpeg";
import chaiquanImg4 from "@/assets/img/chaiquan/4.jpeg";

import demuImg1 from "@/assets/img/demu/1.jpeg";
import demuImg2 from "@/assets/img/demu/2.jpeg";
import demuImg3 from "@/assets/img/demu/3.jpeg";
import demuImg4 from "@/assets/img/demu/4.jpeg";

import douniuImg1 from "@/assets/img/douniu/1.jpg";
import douniuImg2 from "@/assets/img/douniu/2.jpeg";
import douniuImg3 from "@/assets/img/douniu/3.jpeg";
import douniuImg4 from "@/assets/img/douniu/4.jpeg";

import taidiImg1 from "@/assets/img/taidi/1.jpg";
import taidiImg2 from "@/assets/img/taidi/2.jpg";
import taidiImg3 from "@/assets/img/taidi/3.jpg";
import taidiImg4 from "@/assets/img/taidi/4.jpg";

import hashiqiImg1 from "@/assets/img/hashiqi/1.jpg";
import hashiqiImg2 from "@/assets/img/hashiqi/2.jpg";
import hashiqiImg3 from "@/assets/img/hashiqi/3.jpg";
import hashiqiImg4 from "@/assets/img/hashiqi/4.jpg";

import jinmaoImg1 from "@/assets/img/jinmao/1.jpg";
import jinmaoImg2 from "@/assets/img/jinmao/2.jpg";
import jinmaoImg3 from "@/assets/img/jinmao/3.jpg";
import jinmaoImg4 from "@/assets/img/jinmao/4.jpg";

export default {
  props: ["toChildId"],
  data() {
    return {
      businessArr: [
        {
          id: 0,
          title: "品相极佳萨摩耶，专业犬舍出产",
          shape: "萨摩耶",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: samoyeImg1 },
            { id: 2, url: samoyeImg2 },
            { id: 3, url: samoyeImg3 },
            { id: 4, url: samoyeImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "萨摩,萨摩耶德犬,萨摩耶犬,西摩犬",
          height: "53.3—59.7cm",
          weight: "15.5—25.5(公斤)",
          life: "12～15岁",
          purpose: "工作犬",
          from: "俄罗斯",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },
        {
          id: 1,
          title: "品相极佳阿拉斯加，专业犬舍出产",
          shape: "阿拉斯加",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: alasijiaImg1 },
            { id: 2, url: alasijiaImg2 },
            { id: 3, url: alasijiaImg3 },
            { id: 4, url: alasijiaImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "阿拉斯加犬，阿拉斯加马拉缪特，阿拉斯加马拉穆",
          height: "58-71厘米",
          weight: "39-56公斤",
          life: "12～15岁",
          purpose: "工作犬",
          from: "美国阿拉斯加",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },
        {
          id: 2,
          title: "品相极佳巴哥犬，专业犬舍出产",
          shape: "巴哥犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: bageImg1 },
            { id: 2, url: bageImg2 },
            { id: 3, url: bageImg3 },
            { id: 4, url: bageImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "八哥犬/哈巴狗",
          height: "25-28cm",
          weight: " 6-8kg",
          life: "12～15岁",
          purpose: "伴侣犬,玩具犬",
          from: "中国",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },
        {
          id: 3,
          title: "品相极佳边牧，专业犬舍出产",
          shape: "边境牧羊犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: bianmuImg1 },
            { id: 2, url: bianmuImg2 },
            { id: 3, url: bianmuImg3 },
            { id: 4, url: bianmuImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "边境牧羊犬",
          height: "48-56cm",
          weight: " 14-20kg",
          life: "12～15岁",
          purpose: "工作犬",
          from: "苏格兰边境",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },{
          id: 4,
          title: "品相极佳博美，专业犬舍出产3",
          shape: "博美犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: bomeiImg1 },
            { id: 2, url: bomeiImg2 },
            { id: 3, url: bomeiImg3 },
            { id: 4, url: bomeiImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "特内里费狗，巴比熊犬，比雄犬",
          height: "22-28cm",
          weight: "2-3kg",
          life: "12～15岁",
          purpose: "玩具犬",
          from: "德国",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },{
          id: 5,
          title: "品相极佳柴犬，专业犬舍出产",
          shape: "柴犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: chaiquanImg1 },
            { id: 2, url: chaiquanImg2 },
            { id: 3, url: chaiquanImg3 },
            { id: 4, url: chaiquanImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "doge",
          height: "35-41cm",
          weight: " 8-10kg",
          life: "12～15岁",
          purpose: "家庭犬",
          from: "日本",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },{
          id: 6,
          title: "品相极佳德牧，专业犬舍出产",
          shape: "德国牧羊犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: demuImg1 },
            { id: 2, url: demuImg2 },
            { id: 3, url: demuImg3 },
            { id: 4, url: demuImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "德国黑背（贝）、德国狼犬、德国狼狗",
          height: "55-56cm",
          weight: "34-43kg",
          life: "12～15岁",
          purpose: "伴侣犬,牧羊犬,缉毒犬,军犬,导盲犬",
          from: "德国",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },{
          id: 7,
          title: "品相极佳斗牛，专业犬舍出产",
          shape: "斗牛犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: douniuImg1 },
            { id: 2, url: douniuImg2 },
            { id: 3, url: douniuImg3 },
            { id: 4, url: douniuImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "老虎狗、牛头犬",
          height: "51-64cm",
          weight: "29-48kg",
          life: "12～15岁",
          purpose: "伴侣犬,家庭犬,护卫犬",
          from: "英国",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },{
          id: 9,
          title: "品相极佳哈士奇，专业犬舍出产",
          shape: "哈士奇",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: hashiqiImg1 },
            { id: 2, url: hashiqiImg2 },
            { id: 3, url: hashiqiImg3 },
            { id: 4, url: hashiqiImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "西伯利亚雪橇犬",
          height: "51-60cm",
          weight: "16-27kg",
          life: "12～15岁",
          purpose: "工作犬",
          from: "俄罗斯西伯利亚地区",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },{
          id: 8,
          title: "品相极佳泰迪，专业犬舍出产3",
          shape: "泰迪犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: taidiImg1 },
            { id: 2, url: taidiImg2 },
            { id: 3, url: taidiImg3 },
            { id: 4, url: taidiImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "贵妇犬/泰迪犬",
          height: "20-38cm",
          weight: "4-8kg",
          life: "12～15岁",
          purpose: "伴侣犬,玩具犬,家庭犬",
          from: "法国",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },{
          id: 10,
          title: "品相极佳金毛，专业犬舍出产3",
          shape: "金毛寻回犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: [
            { id: 1, url: jinmaoImg1 },
            { id: 2, url: jinmaoImg2 },
            { id: 3, url: jinmaoImg3 },
            { id: 4, url: jinmaoImg4 }
          ], //图片链接
          vaccine: "1针",
          browse: 555, //浏览次数
          guaranteeValue: 5, //保障值
          age: "1岁",
          sellNumber: 1, //在售只数
          anotherName: "金毛寻回猎犬、黄金猎犬",
          height: " 55-61cm",
          weight: "27-34kg",
          life: "12～15岁",
          purpose: "伴侣犬,家庭犬,缉毒犬,导盲犬",
          from: "英国",
          lovePeople: 4, //黏人程度
          hairOff: 2, //掉毛程度
          likeShut: 2, //喜叫程度
          sport: 4, //运动量度
          friendly: 4, //友善程度
          train: 4 //可训程度
        },
      ],
      dogMsg: {}
    };
  },
  created() {
    this.dogMsg = {};
    for (let i = 0; i < this.businessArr.length; i++) {
      if (this.businessArr[i].id == this.toChildId) {
        this.dogMsg = this.businessArr[i];
      }
    }
  }
};
</script>

<style scoped>
.TransactionDialog /deep/ .dog-msg-col {
  padding-left: 25px;
  margin-bottom: 20px;
}
.dog-img {
  padding: 2px;
  border: 1px solid #eee;
}
.dog-msg-title {
  font-size: 18px;
  color: #333333;
}
.dog-msg-browse {
  margin: 14px 0 10px 0;
  font-size: 16px;
  color: #898989;
}
.about-dog {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.about-dog-one {
  margin-top: 10px;
  text-align: center;
  width: 25%;
  border-right: 1px solid #e5e5e5;
}
.about-dog-one:last-child {
  border-right: none;
}
.dog-msg-btn {
  margin-top: 13px;
  display: flex;
  justify-content: space-between;
}
.dog-msg-btn /deep/ .btn {
  width: 184px;
  font-size: 18px;
}
.dog-msg-btn /deep/ .iconfont {
  font-size: 18px;
}
.dog-basic-information-title span {
  margin: 0 0 30px 0;
  font-size: 18px;
  font-weight: normal;
  color: #333333;
}
.dog-basic-information {
  margin-top: 10px;
  margin-bottom: 20px;
}
.dog-basic-information span {
  color: #7e7e7e;
}
.dog-basic-information > div:not(:first-child) {
  margin-top: 10px;
}
</style>