<template>
  <div v-cloak>
    <el-container class="encyclopedias-container">
      <el-main class="encyclopedias-main">
        <el-row>
          <el-col :span="18" :offset="3">
            <div class="all-dog">
              <div
                v-for="item in dogArr"
                :key="item.id"
                class="one-dog animated fadeInUp"
                v-show="show"
              >
                <router-link :to="item.link" class="baike-link">
                  <img :src="item.src" />
                  <span v-cloak>{{ item.name }}</span>
                </router-link>
              </div>
            </div>
          </el-col>
        </el-row>
      </el-main>
    </el-container>
  </div>
</template>

<script>
import alasijiaImg from "@/assets/img/alasijia/baike.jpg";
import bageImg from "@/assets/img/bage/baike.jpg";
import bianmuImg from "@/assets/img/bianmu/baike.jpg";
import bixiongImg from "@/assets/img/bixiong/baike.jpg";
import bomeiImg from "@/assets/img/bomei/baike.jpg";
import chaiquanImg from "@/assets/img/chaiquan/baike.jpg";
import demuImg from "@/assets/img/demu/baike.jpg";
import douniuImg from "@/assets/img/douniu/baike.jpg";
import guibinImg from "@/assets/img/guibin/baike.jpg";
import hashiqiImg from "@/assets/img/hashiqi/baike.jpg";
import hudieImg from "@/assets/img/hudie/baike.jpg";
import jinmaoImg from "@/assets/img/jinmao/baike.jpg";
import jiwawaImg from "@/assets/img/jiwawa/baike.jpg";
import kejiImg from "@/assets/img/keji/baike.jpg";
import labuladuoImg from "@/assets/img/labuladuo/baike.jpg";
import lachangImg from "@/assets/img/lachang/baike.jpg";
import luoweinaImg from "@/assets/img/luoweina/baike.jpg";
import samoyeImg from "@/assets/img/samoye/2.png";
import taidiImg from "@/assets/img/taidi/baike.jpg";
import tianyuanImg from "@/assets/img/tianyuan/1.jpg";

export default {
  mounted() {
    this.show = true;
  },
  data() {
    return {
      show: false,
      dogArr: [
        {
          id: 0,
          src: alasijiaImg,
          name: "阿拉斯加雪橇犬",
          link: "/Alasijia"
        },
        {
          id: 1,
          src: bageImg,
          name: "巴哥犬",
          link: "/Bage"
        },
        {
          id: 2,
          src: bianmuImg,
          name: "边境牧羊犬",
          link: "/Bianmu"
        },
        {
          id: 3,
          src: bixiongImg,
          name: "比熊犬",
          link: "/Bixiong"
        },
        {
          id: 4,
          src: bomeiImg,
          name: "博美犬",
          link: "/Bomei"
        },
        {
          id: 5,
          src: chaiquanImg,
          name: "柴犬",
          link: "/Chaiquan"
        },
        {
          id: 6,
          src: demuImg,
          name: "德国牧羊犬",
          link: "/Demu"
        },
        {
          id: 7,
          src: douniuImg,
          name: "英国斗牛犬",
          link: "/Douniu"
        },
        {
          id: 8,
          src: guibinImg,
          name: "贵宾犬",
          link: "/Guibin"
        },
        {
          id: 9,
          src: hashiqiImg,
          name: "哈士奇",
          link: "/Hashiqi"
        },
        {
          id: 10,
          src: hudieImg,
          name: "蝴蝶犬",
          link: "/Hudie"
        },
        {
          id: 11,
          src: jinmaoImg,
          name: "金毛",
          link: "/Jinmao"
        },
        {
          id: 12,
          src: jiwawaImg,
          name: "吉娃娃",
          link: "/Jiwawa"
        },
        {
          id: 13,
          src: kejiImg,
          name: "柯基",
          link: "/Keji"
        },
        {
          id: 14,
          src: labuladuoImg,
          name: "拉布拉多",
          link: "/Labuladuo"
        },
        {
          id: 15,
          src: lachangImg,
          name: "腊肠犬",
          link: "/Lachang"
        },
        {
          id: 16,
          src: luoweinaImg,
          name: "罗威纳",
          link: "/Luoweina"
        },
        {
          id: 17,
          src: samoyeImg,
          name: "萨摩耶",
          link: "/Samoye"
        },
        {
          id: 18,
          src: taidiImg,
          name: "泰迪犬",
          link: "/Taidi"
        },
        {
          id: 19,
          src: tianyuanImg,
          name: "中华田园犬",
          link: "/Tianyuan"
        }
      ]
    };
  }
};
</script>

<style scoped>
[v-cloak] {
  display: none;
}
.encyclopedias-container /deep/ .encyclopedias-main {
  padding: 0;
  padding-top: 20px;
}
.all-dog {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  overflow: hidden;
}
.one-dog {
  border: 1px solid #dfe6e9;
  padding: 3px;
  width: 22%;
  margin-bottom: 20px;
  overflow: hidden;
}
.one-dog img {
  width: 100%;
  transition: 0.5s;
}
.one-dog:hover img {
  transform: scale(1.03);
}
.baike-link {
  text-decoration: none;
}
.one-dog span {
  color: #3c3c3c;
  display: block;
  text-align: center;
  transition: 0.5s;
}
.one-dog:hover span {
  color: #74b9ff;
}
</style>
