<template>
  <div>
    <el-container class="tianyuan-container">
      <el-main class="tianyuan-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="tianyuanUrl" height="100%" />
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
                      <span style="color:red">中华田园犬犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">中华田园犬犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">中华田园犬犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">中华田园犬犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">中华田园犬犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">中华田园犬犬</span>
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
import tianyuanImg from "@/assets/img/tianyuan/1.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      tianyuanUrl: tianyuanImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "中华田园犬",
        englighName: "Zhonghua Tianyuanquan",
        otherName: "黄狗、大黄狗、土狗、柴狗",
        area: "中国",
        address: "中国",
        shape: "中型犬",
        use: "工作犬",
        group: "工作犬",
        height: "25~55厘米",
        weight: "10~30公斤",
        life: "12-15年",
        price: "50-500元",
        style: "友善"
      },
      degreeMsg: [
        {
          id: 0,
          degreeName: "黏人程度",
          number: 2
        },
        {
          id: 1,
          degreeName: "喜叫程度",
          number: 3
        },
        {
          id: 2,
          degreeName: "掉毛程度",
          number: 1
        },
        {
          id: 3,
          degreeName: "体味程度",
          number: 1
        },
        {
          id: 4,
          degreeName: "美容程度",
          number: 3
        },
        {
          id: 5,
          degreeName: "友善程度",
          number: 4
        },
        {
          id: 6,
          degreeName: "对陌生人程度",
          number: 1
        },
        {
          id: 7,
          degreeName: "对动物程度",
          number: 3
        },
        {
          id: 8,
          degreeName: "运动量度",
          number: 3
        },
        {
          id: 9,
          degreeName: "可训程度",
          number: 2
        },
        {
          id: 10,
          degreeName: "口水程度",
          number: 2
        },
        {
          id: 11,
          degreeName: "耐寒程度",
          number: 3
        },
        {
          id: 12,
          degreeName: "耐热程度",
          number: 3
        },
        {
          id: 13,
          degreeName: "城市适应性",
          number: 1
        }
      ],
      shapeIntroduce:
        "<p>中华田园犬与早期的狼、中国狼、草原狼外形非常相似，嘴短，额平。中国土狗主要分布于长城以南、青藏高原以东，以中部地区为中心的低海拔地区，广泛存在于中国农村及东南亚地区，现在城市化也广泛把中华田园犬当作宠物狗。</p><br><p>中华田园犬是中国几千年农耕社会背景下的产物，是历史和文化的活化石，被称为“中华国犬”。</p>",
      originIntroduce:
        "<p>中华田园犬是中国本土最古老的犬种之一，曾被尊称为“国犬”。</p><br><p>秦始皇一统中国时有个典故：秦朝丞相李斯临刑哀叹：“吾欲与若复牵黄犬俱出，上蔡，东门逐狡兔，岂可得乎”；苏东坡词云“老夫聊发少年狂，左牵黄，右擎苍”。这里的“黄”指的就是这种用于行猎的田园犬。在现代民间人们称之为“土狗”，顾名思义就是本土本地区的狗；北方有的地方又叫“柴狗”，因为北方气候寒冷，狗一般都会窝在柴灶或柴堆旁；东方江浙沪地区则一般被称为“草狗”，这里的“草”就是“土”、本地产的意思。当地的农民家中都会养一两条这样的狗看家作伴。</p><br><p>土狗的定义是指某地域的特产犬种，适合当地的气候特点，比其他种类犬只更容易独立生存。</p><br><p>中国土狗大多生存于中国农村、郊外，多为放养型且在原生犬种中占多数比例。部分学者认为中华田园犬与日本柴犬在遗传上的确存在联系，是同一犬类祖先在日本与中国分别培育出来的。</p><br><p>现今绝大部分犬类的历史发源地都被证明是中国或者说的古代的中国。由中国科学院昆明动物研究所研究员、中科院院士张亚平带领的研究小组完成的论文《走出东亚南部：全世界家犬的起源历史》发表在《细胞研究》的最新研究称：包括吉娃娃、松狮、秘鲁无毛犬在内的全世界的家犬，都起源于中国南方等东亚南部地区，自灰狼进化而来。东亚南部地区的家犬的基因组拥有全世界最丰富的遗传多样性。</p>",
      fitIntroduce:
        "<p>性格比较温顺，不容易主动攻击人类，可以群居，地域性强，容易饲养，忠诚度高，不易生皮肤病。其广泛用于农村的看家护院和早期的狩猎，适合在农村生活的人们。</p>",
      measureIntroduce:
        "<p>头部：头部特征更加接近于其祖先狼的外貌，嘴尖，嘴短，额平。</p><br><p>耳 朵：耳位高，耳小且直立或半直立，半直立的耳朵是向头部正前方半下垂。(不同于其它一些犬种耳朵大且耳朵向头部两边全塌下去）</p><br><p>尾巴：尾巴向上翘起，特别在行走时会高高翘起，以金钱尾和镰刀尾为主。（明显不同于大多西洋犬种较直且下垂的尾部）</p><br><p>后腿：当站立静止时，后腿明显很平直并垂直于地面，踝关节弯曲不明显。（特别是与大多西洋犬种弯曲的后腿踝关节相比更是明显）</p><br><p>毛：棕毛为主，毛质粗，容易保持干净。颜色黄、白、黑、杂色都有。</p><br><p>体形：身体匀称而紧凑；中等大小，身长与肩高比约成1:1，加上后腿平直并几乎垂直于地面使整个身体成正方形。</p><br><p>柴犬近亲：中型犬，跟柴犬相似，黄色外体，白色脸部，耳朵竖起，适合纯种狗配种生育后代。</p>",
      feedIntroduce:
        "<p>中国土狗是肉食动物，所以在喂养时，需要在饲料中配制较多的动物蛋白，肉食，辅以素食成分，以保证狗的正常发育和健康。有时也吃草，但吃得很少，偶尔也吐掉，狗吃草不是为了充饥，而是为了清胃，主要因狗的肠胃结构独特。狗的胃很大，约占腹腔的2/3，而肠子却很短，约占腹腔的1/3，所以狗基本上是用胃来消化食物和吸收营养，容易消化肉类食物，不易消化像树叶、草等有“筋”的东西。虽然犬属于食肉动物，但生存艰难时犬可以依靠蔬菜和谷物这类食物活下去。</p><br><p>中国土狗也与其他犬类一样有食粪习性，即以人类和自身粪便为食的习性。有研究表明，狗在上万年的驯化进程中与人类相处而习得这一习性，这是早期人类社会食物匮乏时期狗不得不接受粪便作为食物的重要来源之一，也有看法认为这是狗在食物不足、营养不良缺乏某种微量元素或者患有寄生虫病情况下的病态表现。补充微量元素时也能减少此行为。</p>",
      identifyIntroduce:
        "<p>如发觉它们外型大致相同的话，最得我们欢心的当然是那头自动前来摇头摆尾，缠脚舐手的家伙了。不过，如果你选中它的话，可能迟些又会发觉它难以治服，令初养狗儿的你手足无措。相反最初那头躲在后面鬼鬼祟祟的怕羞鬼，尽管多数欠缺吸引力，但却可能是重视宁静生活人士的良伴。</p>"
    };
  }
};
</script>

<style scoped>
.tianyuan-container /deep/ .tianyuan-main {
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
.tianyuan-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.tianyuan-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.tianyuan-container
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