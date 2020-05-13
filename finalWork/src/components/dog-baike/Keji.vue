<template>
  <div>
    <el-container class="keji-container">
      <el-main class="keji-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="kejiUrl" height="100%" />
                  </div>
                </el-col>
                <el-col :span="12">
                  <div class="dog-msg">
                    <div class="msg-title">
                      <span>{{dogMsg.name}}</span>
                    </div>
                    <div class="msg-englishname">
                      <span>{{dogMsg.englighName}}</span>
                      <img :src="boneUrl" style="margin-left:10px;" />
                    </div>
                    <div class="msg-details">
                      <div>
                        <span class="msg-little-title">别 名：</span>
                        <span class="msg-little-content">{{dogMsg.otherName}}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">分 布 区 域：</span>
                        <span class="msg-little-content">{{dogMsg.area}}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">原 产 地：</span>
                        <span class="msg-little-content">{{dogMsg.address}}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">体 型：</span>
                        <span class="msg-little-content">{{dogMsg.shape}}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">功 能：</span>
                        <span class="msg-little-content">{{dogMsg.use}}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">分 组：</span>
                        <span class="msg-little-content">{{dogMsg.group}}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">身 高：</span>
                        <span class="msg-little-content">{{dogMsg.height}}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">体 重：</span>
                        <span class="msg-little-content">{{dogMsg.weight}}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">寿 命：</span>
                        <span class="msg-little-content">{{dogMsg.life}}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">参 考 价 格：</span>
                        <span class="msg-little-content2">{{dogMsg.price}}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">特 点：</span>
                        <span class="msg-little-content">{{dogMsg.style}}</span>
                      </div>
                    </div>
                  </div>
                </el-col>
              </el-row>
              <el-row style="margin-top:32px;">
                <el-col :span="24">
                  <div class="degree-msg">
                    <div v-for="item in degreeMsg" :key="item.id">
                      <span>{{item.degreeName}}</span>
                      <div>
                        <span v-for="(a,index) in item.number" :key="index">
                          <i class="el-icon-star-on" style="color:#ffd32a;font-size:23px;"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                </el-col>
              </el-row>
              <el-row style="margin-top:32px;">
                <el-tabs type="border-card">
                  <el-tab-pane>
                    <span slot="label">
                      <i class="el-icon-document"></i> 品种介绍
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柯基犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柯基犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柯基犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柯基犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柯基犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柯基犬</span>
                      <span>的鉴别挑选</span>
                    </div>
                    <div v-html="identifyIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                </el-tabs>
              </el-row>
            </el-card>
          </el-col>
        </el-row>
      </el-main>
    </el-container>
  </div>
</template>


<script>
import kejiImg from "@/assets/img/keji/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      kejiUrl: kejiImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "卡迪根威尔士柯基犬",
        englighName: "Welsh Corgi Cardigan、Cardigan Welsh Corgi",
        otherName: "卡狄根柯基犬、卡地甘威尔士柯基犬",
        area: "英国、美国",
        address: "英国",
        shape: "小型犬",
        use: "牧羊犬",
        group: "牧羊犬",
        height: " 27-32厘米",
        weight: " 11-17公斤",
        life: "12-15年",
        price: "2.2万元以上元",
        style: "无体味,易打理,友善,易训练"
      },
      degreeMsg: [
        {
          id: 0,
          degreeName: "黏人程度",
          number: 1
        },
        {
          id: 1,
          degreeName: "喜叫程度",
          number: 1
        },
        {
          id: 2,
          degreeName: "掉毛程度",
          number: 3
        },
        {
          id: 3,
          degreeName: "体味程度",
          number: 1
        },
        {
          id: 4,
          degreeName: "美容程度",
          number: 2
        },
        {
          id: 5,
          degreeName: "友善程度",
          number: 3
        },
        {
          id: 6,
          degreeName: "对陌生人程度",
          number: 4
        },
        {
          id: 7,
          degreeName: "对动物程度",
          number: 4
        },
        {
          id: 8,
          degreeName: "运动量度",
          number: 3
        },
        {
          id: 9,
          degreeName: "可训程度",
          number: 4
        },
        {
          id: 10,
          degreeName: "口水程度",
          number: 1
        },
        {
          id: 11,
          degreeName: "耐寒程度",
          number: 4
        },
        {
          id: 12,
          degreeName: "耐热程度",
          number: 4
        },
        {
          id: 13,
          degreeName: "城市适应性",
          number: 5
        }
      ],
      shapeIntroduce:
        "<p>威尔士柯基犬如今细分为两种：卡迪根威尔士柯基犬和彭布罗克威尔士柯基犬。是一种非常古老的放牧品种之一。非要说一下两者的区别的话，应该是彭布罗克柯基犬的体形更短一点，不过它的腿骨却更直也更轻，而威尔士柯基犬比前者有优势的地方大概就是被毛的质地更柔软一些;至于性格方面，彭布罗克柯基犬不太安分，容易激动，不像卡迪根威尔士柯基犬那么安静沉稳。</p><br><p>从12世纪的理查一世到如今的伊丽莎白二世，柯基犬一直都是英国王室备受宠爱的宠物。</p><br><p>卡迪根威尔士柯基犬活泼但也不失沉着，忠诚有爱，服从性极高，具有极强的适应能力，能适应不同的环境和气候，表情聪明好奇，绝对不会表现出羞怯或是凶恶。</p>",
      originIntroduce:
        "<p>起源于英国威尔士，可追溯至1200年，距今也有非常悠久的历史了，作为一种小型犬，到1850年，人们对它的了解也就仅限于它是威尔士品种家族中唯一存活并流传下来的。在威尔士，该犬主要被用来驱赶牛群，因为它体型小，能够自如地穿梭在牛群之中，通过咬住牛的下肢来控制牛的行为。</p>",
      fitIntroduce:
        "<p>该犬天生活泼好动，尤其喜欢运动，因此每天都得带它去外面进行大量的运动以及一起玩耍。当然，它发泄完之后在室内也可以很乖的，是一种宜动宜静的宠物，工作时会表现得精力充沛、认真尽责，总体来说它不太适合工作繁忙没有时间带它运动的上班族和学生。另外，很多城市现在公布的养犬条例中明确规定禁止饲养肩高超过35厘米的犬，因此身材矮小的它是非常适合城市生活的。</p>",
      measureIntroduce:
        "<p>头：外形长得还挺像小狐狸的，表情聪明而好奇，对周围的环境十分关注，不会表现出胆怯的样子。颅部非常宽，两耳之间的部分则较为平坦，额鼻架高度适中，脸颊比较浑圆，前脸面的轮廓十分清晰，可以明显看出吻部逐渐变尖。枕骨到额鼻架中心的距离比额鼻架到鼻尖的距离要大，颅骨的总长度和前脸面总长度的比例为5:3，鼻子整个都是黑色的。</p><br><p>眼睛：呈椭圆形，中等大小，不突出，略有倾斜。眼睛为棕色，与它的被毛颜色搭配协调，眼睛的边缘呈黑色，通常眼周为黑色的是最合适的。如果眼睛为黑色的话会非常不受欢迎，还有黄眼睛和蓝眼睛也一样不受欢迎。</p><br><p>耳：摸起来较坚硬，大小适中，往耳尖方向逐渐变得小而浑圆。耳朵能灵活活动，听觉敏锐，对声音很敏感。自鼻尖穿过眼睛到耳尖互相划直线所形成的一个三角形近似等边。</p><br><p>蝙蝠耳、小猫耳、大而无力的耳、垂耳、位置太高或太低的耳朵都不理想。而扣状耳、玫瑰耳或下垂耳则属于严重缺陷。</p><br><p>颌/牙：口吻圆，但不显迟钝，呈锥形，不过不会显得过于尖细。下颌的深度中等，下巴较圆。</p><br><p>颈、躯体：胸部中等宽度，胸骨突出。腰部短而结实。</p><br><p>四肢：前肢既非笔直，也没有弯曲得很厉害，骨量充足。后肢肌肉发达且结实。狼爪是必须要切除的。足爪很大，也很圆，脚垫厚实。脚尖有点往外，从宽度上来看，处于与肩部相对应的位置，不过行走时可以保持笔直向前。从上面看，往外偏转的角度不可超过30度。脚趾紧凑，不可张开。</p><br><p>臀：略微向下，往尾巴方向倾斜。</p><br><p>尾巴：从整体外形上来看，尾巴的位置还是比较低的，尾巴的长度可以延伸到飞节的位置。站立和散步时，尾巴呈笔直下垂的状态;但突然奔跑起来的话，尾巴则会举起，与地面保持平行;兴奋的时候，尾巴还会往上举起，但是绝对不可以翻卷到背后。</p><br><p>被毛:中等长度，浓密厚实，双层，外层毛质略显粗硬，但还不到刚毛的程度，呈卷曲状或丝状，被毛平滑地贴在身躯上，能够帮助它抵御恶劣的气候。底毛短，触感柔软，也十分浓密。</p><br><p>颜色：不同深浅的红色、深褐色或带有斑纹。蓝色、芸石色、黑色、灰色、大理石色带或不带棕色或斑点。对这些颜色没有偏爱。</p><br><p>白色一般出现在颈部区域或是环绕一圈形成围脖，还有腿部、胸部、口吻、身体下部、尾尖及头部的白筋。头部的白色不能成为主色调，白色更不可以出现在眼周部位。</p>",
      feedIntroduce:
        "<p>每天饲喂的狗粮中，应该含有肉类200～250克，以及等量的素食。素食可以选择各种杂粮、蔬菜等。只要定期更换一下品种，以保证营养的全面性即可。</p><br><p>每天饲喂的量要控制好，太多或太少都对健康不利，而且还会影响狗狗的成长发育。</p><br><p>柯基犬的被毛虽然略粗，也不是很长，但也应该经常梳刷、清理，以保持清洁和美观。而且要定期给柯基犬洗澡，清除耳垢、牙垢，用温水(沸腾后的)清洗眼睛，修剪爪子等等。柯基犬的眼部疾病比较常见，所以建议每隔三五天，就用2%浓度的硼酸水给它清洗眼睛，防止眼疾的发生。</p><br><p>柯基犬的犬舍最好选择背风、整洁且干燥的地方，定期清扫打理，并且每半个月到一个月要彻底消毒处理一次。</p><br><p>由于柯基犬过去是作为畜牧犬来饲养的，所以活动量比较大，也比较好动，所以千万不要总是将它关在室内，应该每天带它出去活动活动，消耗掉旺盛的精力，这样它才不会无聊，也不会精神不好，郁郁寡欢，保持其健康活泼的状态。</p><br><p>柯基犬容易和同类起争斗，因此从小就要对其进行训练，哪怕没办法彻底改掉，也要尽可能有所节制，最起码听到主人的制止会停下来。同时还要训练柯基犬不用牙和爪去撕咬家中的衣服、窗帘、沙发、床单以及被子等生活物品，并训练它爱干净，不要总是弄得身上脏兮兮的，尤其不要随便躺进泥泞的地上打滚，当然，最重要的是训练它去固定的地方大小便。</p>",
      identifyIntroduce:
        "<p>整体：身高：27-32cm</p><br><p>雄性柯基肩高28-31cm，雌性25-29cm</p><br><p>体重：11-17kg</p><br><p>体重范围：雄性10-17kg，雌性10-11kg</p>"
    };
  }
};
</script>

<style scoped>
.keji-container /deep/ .keji-main {
  padding: 0;
  padding-top: 20px;
}
img {
  vertical-align: middle;
}
.dog-img {
  width: 90%;
  height: 349px;
}
.baike-img {
  position: absolute;
  right: -10px;
  top: -20px;
}
.msg-title {
  font-size: 26px;
  color: #666;
}
.msg-englishname {
  display: flex;
  margin-top: 5px;
  align-items: center;
  color: #999;
  font-size: 12px;
}
.msg-details {
  margin-top: 15px;
  display: flex;
  flex-wrap: wrap;
  background: #f9f9f9;
}
.msg-details > div {
  width: 50%;
  height: 33px;
  margin-top: 12px;
}
.msg-little-title {
  margin-left: 20px;
  color: #999;
  font-size: 12px;
}
.msg-little-content {
  color: #666;
  font-size: 12px;
}
.msg-little-content2 {
  color: #f70909;
  font-size: 18px;
  font-weight: bold;
}
.degree-msg {
  display: flex;
  flex-wrap: wrap;
}
.degree-msg > div {
  width: 14%;
  height: 75px;
  line-height: 30px;
  text-align: center;
  border: 1px solid #eef1f1;
}
.degree-msg > div > span {
  color: #666;
  font-size: 14px;
}
.keji-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.keji-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.keji-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:nth-child(2) {
  padding-left: 30px;
}
.shape-introduce-title {
  margin-bottom: 20px;
}
.shape-introduce-title > span {
  font-weight: bold;
  font-size: 20px;
}
.introduce-text {
  text-indent: 2em;
  margin-bottom: 30px;
}
</style>