<template>
  <div>
    <el-container class="transaction-container">
      <el-main class="transaction-main" :style="a">
        <el-row>
          <el-col :span="17" :offset="3">
            <el-card class="box-card">
              <div class="filter-condition-container">
                <div class="filter-condition">
                  <span>体型：</span>
                  <el-select v-model="shape" placeholder="请选择">
                    <el-option
                      v-for="item in shapeOptions"
                      :key="item.value"
                      :label="item.label"
                      :value="item.value"
                    ></el-option>
                  </el-select>
                </div>
                <div class="filter-condition">
                  <span>年龄：</span>
                  <el-select v-model="age" placeholder="请选择">
                    <el-option
                      v-for="item in ageOptions"
                      :key="item.value"
                      :label="item.label"
                      :value="item.value"
                    ></el-option>
                  </el-select>
                </div>
                <div class="filter-condition">
                  <span>疫苗：</span>
                  <el-select v-model="vaccine" placeholder="请选择">
                    <el-option
                      v-for="item in vaccineOptions"
                      :key="item.value"
                      :label="item.label"
                      :value="item.value"
                    ></el-option>
                  </el-select>
                </div>
                <div class="filter-condition">
                  <span>价格：</span>
                  <el-select v-model="price" placeholder="请选择">
                    <el-option
                      v-for="item in priceOptions"
                      :key="item.value"
                      :label="item.label"
                      :value="item.value"
                    ></el-option>
                  </el-select>
                </div>
              </div>
              <div style="display: flex;justify-content: flex-end;margin-top:15px;">
                <el-button type="primary">查询</el-button>
              </div>
              <div class="filter-condition all-dog">
                <div class="dog-shape-span">
                  <span>犬种：</span>
                </div>
                <div class="dog-shape">
                  <div v-for="item in dogShapeArr" :key="item.id" class="one-dog">
                    <span>{{item.name}}</span>
                  </div>
                </div>
              </div>
            </el-card>
          </el-col>
        </el-row>
        <el-row style="margin-top:15px">
          <el-col :span="17" :offset="3">
            <el-card class="box-card">
              <div v-for="item in businessArr" :key="item.id">
                <div class="business">
                  <div class="business-img">
                    <img :src="item.src" class="business-img-true" />
                  </div>
                  <div class="business-content">
                    <div class="business-content-title">{{item.title}}</div>
                    <div class="business-content-shape">犬种：{{item.shape}}</div>
                    <div class="business-content-shape">性别：{{item.sex}}</div>
                    <div class="business-content-shape">犬舍：{{item.dogHouse}}</div>
                    <div class="business-content-shape">地址：{{item.address}}</div>
                    <div class="business-content-price">
                      价格：
                      <span>￥{{item.price}}</span>
                    </div>
                  </div>
                  <el-button type="primary" class="knowmore-btn" @click="showMore(item.id)">了解更多</el-button>
                </div>
                <el-divider></el-divider>
              </div>
            </el-card>
          </el-col>
        </el-row>
      </el-main>
    </el-container>
    <el-dialog :visible.sync="moreVisible" width="60%">
      <TransactionDialog :toChildId="toChild" :key="timer"></TransactionDialog>
    </el-dialog>
  </div>
</template>

<script>
import samoyeImg from "@/assets/img/samoye/1.jpeg";
import alasijiaImg from "@/assets/img/alasijia/1.jpg";
import bageImg from "@/assets/img/bage/1.jpg";
import bianmuImg from "@/assets/img/bianmu/1.jpg";
import bomeiImg from "@/assets/img/bomei/1.jpg";
import chaiquanImg from "@/assets/img/chaiquan/1.jpg";
import demuImg from "@/assets/img/demu/1.jpeg";
import douniuImg from "@/assets/img/douniu/1.jpg";
import taidiImg from "@/assets/img/taidi/1.jpg";
import hashiqiImg from "@/assets/img/hashiqi/1.jpg";
import jinmaoImg from "@/assets/img/jinmao/1.jpg";
import TransactionDialog from "@/components/child/TransactionDialog";
export default {
  components: {
    TransactionDialog
  },
  mounted() {
    //渲染时触发
    this.$data.a.display = "block";
    this.$data.a.opacity = "1";
    this.$data.a.transform = "translateY(0px)";
  },
  data() {
    return {
      a: {
        opacity: "0",
        transition: "1s",
        transform: "translateY(100px)"
      },
      shapeOptions: [
        {
          value: "选项1",
          label: "不限"
        },
        {
          value: "选项2",
          label: "小型犬"
        },
        {
          value: "选项3",
          label: "中型犬"
        },
        {
          value: "选项4",
          label: "大型犬"
        }
      ],
      ageOptions: [
        {
          value: "选项1",
          label: "不限"
        },
        {
          value: "选项2",
          label: "3月龄以下"
        },
        {
          value: "选项3",
          label: "3月龄-5月龄"
        },
        {
          value: "选项4",
          label: "5月龄-1岁"
        },
        {
          value: "选项5",
          label: "1岁以上"
        }
      ],
      vaccineOptions: [
        {
          value: "选项1",
          label: "不限"
        },
        {
          value: "选项2",
          label: "未打"
        },
        {
          value: "选项3",
          label: "1针"
        },
        {
          value: "选项4",
          label: "2针"
        },
        {
          value: "选项5",
          label: "3针"
        }
      ],
      priceOptions: [
        {
          value: "选项1",
          label: "不限"
        },
        {
          value: "选项2",
          label: "2000-3000"
        },
        {
          value: "选项3",
          label: "3000-4000"
        },
        {
          value: "选项4",
          label: "4000-5000"
        },
        {
          value: "选项5",
          label: "5000-10000"
        },
        {
          value: "选项6",
          label: "10000以上"
        }
      ],
      dogShapeArr: [
        {
          id: 0,
          name: "哈士奇"
        },
        {
          id: 1,
          name: "拉布拉多"
        },
        {
          id: 2,
          name: "柴犬"
        },
        {
          id: 3,
          name: "柯基"
        },
        {
          id: 4,
          name: "萨摩耶"
        },
        {
          id: 5,
          name: "边境牧羊犬"
        },
        {
          id: 6,
          name: "金毛"
        },
        {
          id: 7,
          name: "比熊犬"
        },
        {
          id: 8,
          name: "泰迪"
        },
        {
          id: 9,
          name: "吉娃娃"
        },
        {
          id: 10,
          name: "博美"
        },
        {
          id: 11,
          name: "阿拉斯加"
        },
        {
          id: 12,
          name: "德国牧羊犬"
        },
        {
          id: 13,
          name: "蝴蝶犬"
        },
        {
          id: 14,
          name: "贵宾犬"
        },
        {
          id: 15,
          name: "腊肠犬"
        },
        {
          id: 16,
          name: "斗牛犬"
        },
        {
          id: 17,
          name: "罗威纳"
        },
        {
          id: 18,
          name: "巴哥"
        },
        {
          id: 19,
          name: "中华田园犬"
        }
      ],
      businessArr: [
        {
          id: 0,
          title: "品相极佳萨摩耶，专业犬舍出产",
          shape: "萨摩耶",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: samoyeImg
        },
        {
          id: 1,
          title: "品相极佳阿拉斯加，专业犬舍出产",
          shape: "阿拉斯加",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 2000,
          src: alasijiaImg
        },
        {
          id: 2,
          title: "品相极佳巴哥，专业犬舍出产",
          shape: "巴哥",
          sex: "母",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: bageImg
        },
        {
          id: 3,
          title: "品相极佳边牧，专业犬舍出产",
          shape: "边境牧羊犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: bianmuImg
        },
        {
          id: 4,
          title: "品相极佳博美，专业犬舍出产",
          shape: "博美犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: bomeiImg
        },
        {
          id: 5,
          title: "品相极佳柴犬，专业犬舍出产",
          shape: "柴犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: chaiquanImg
        },
        {
          id: 6,
          title: "品相极佳德牧，专业犬舍出产",
          shape: "德国牧羊犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: demuImg
        },
        {
          id: 7,
          title: "品相极佳斗牛，专业犬舍出产",
          shape: "斗牛犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: douniuImg
        },
        {
          id: 8,
          title: "品相极佳泰迪，专业犬舍出产",
          shape: "泰迪犬",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: taidiImg
        },
        {
          id: 9,
          title: "品相极佳哈士奇，专业犬舍出产",
          shape: "哈士奇",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: hashiqiImg
        },
        {
          id: 10,
          title: "品相极佳金毛，专业犬舍出产",
          shape: "金毛",
          sex: "公",
          dogHouse: "专业名犬",
          address: "浙江杭州",
          price: 3000,
          src: jinmaoImg
        }
      ],
      shape: "",
      age: "",
      vaccine: "",
      price: "",
      moreVisible: false,
      toChild: 0, //传往子组件的默认值
      timer: "" //确保子组件每次刷新
    };
  },
  methods: {
    showMore(id) {
      this.moreVisible = true;
      this.toChild = id;
      this.timer = new Date().getTime();
    }
  }
};
</script>

<style scoped>
body {
  background: #f6f6f6;
}
.transaction-container /deep/ .transaction-main {
  padding: 0;
  padding-top: 20px;
}
.transaction-container /deep/ .filter-condition-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center;
}
.filter-condition span {
  font-size: 14px;
  color: #999999;
}

.all-dog {
  margin-top: 10px;
  display: flex;
}
.dog-shape {
  margin-top: 3px;
  display: flex;
  flex-wrap: wrap;
  justify-content: flex-start;
}
.dog-shape-span {
  width: 111px;
}
.one-dog {
  width: 108px;
  margin-bottom: 10px;
  margin-right: 21px;
  font-size: 14px;
}
.one-dog span {
  cursor: pointer;
  color: #636e72;
  transition: 0.5s;
}
.one-dog span:hover {
  color: #0984e3;
}
.business {
  display: flex;
  position: relative;
}
.business-img {
  width: 200px;
  height: 150px;
  border: 1px solid #eee;
  padding: 1px;
}
.business-img-true {
  width: 100%;
  height: 99.8%;
}
.business-content {
  margin-left: 10px;
}
.business-content-title {
  color: red;
  font-size: 18px;
}
.business-content-shape {
  margin-top: 5px;
}
.business-content-price {
  margin-top: 13px;
}
.business-content-price span {
  color: #ff8b3d;
  font-weight: bold;
}
.business-content-shape {
  font-size: 14px;
  color: #727272;
}
.knowmore-btn {
  position: absolute;
  bottom: 1%;
  right: 0;
  height: 40px;
}
</style>