<template>
  <div>
    <el-container class="luoweina-container">
      <el-main class="luoweina-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="luoweinaUrl" height="100%" />
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
                      <span style="color:red">罗威纳犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">罗威纳犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">罗威纳犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">罗威纳犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">罗威纳犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">罗威纳犬</span>
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
import luoweinaImg from "@/assets/img/luoweina/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      luoweinaUrl: luoweinaImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "罗威纳犬",
        englighName: "rottweiler",
        otherName: "罗威纳、洛威拿、罗特威勒、罗威",
        area: "德国",
        address: "德国",
        shape: "大型犬",
        use: "工作犬,军犬,护卫犬",
        group: " 工作犬，护卫犬",
        height: "58-69厘米",
        weight: " 41-50公斤",
        life: " 9-11年",
        price: "5000-20000元",
        style: " 护家,耐寒"
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
          number: 2
        },
        {
          id: 3,
          degreeName: "体味程度",
          number: 3
        },
        {
          id: 4,
          degreeName: "美容程度",
          number: 3
        },
        {
          id: 5,
          degreeName: "友善程度",
          number: 2
        },
        {
          id: 6,
          degreeName: "对陌生人程度",
          number: 1
        },
        {
          id: 7,
          degreeName: "对动物程度",
          number: 2
        },
        {
          id: 8,
          degreeName: "运动量度",
          number: 3
        },
        {
          id: 9,
          degreeName: "可训程度",
          number: 3
        },
        {
          id: 10,
          degreeName: "口水程度",
          number: 3
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
          number: 4
        }
      ],
      shapeIntroduce:
        "<p>罗威纳犬，别名：罗威纳、洛威拿、罗特威勒、罗威，英文名：rottweiler。此犬身体强壮、动作迅猛、气势强悍，是世界上最具勇气和力量的犬种之一。</p><br><p>此犬过去经常被用于看守牛群，是非常聪明、强壮且极易亲近的犬种。如今主要用于警犬，广受好评，当然也可以成为极有身价的家庭犬。</p><br><p>罗威纳犬生来就具备警卫才能，在中世纪的时候，有钱的商人们为了避免自己的钱财被盗，就将钱袋挂在罗威纳犬的脖子上。</p><br><p>而罗威纳犬作为杰出的警犬，能攻击侵入者。而为了让它认真服从命令，饲养者必须经过严格的训练。</p><br><p>体型中等但是精力充沛，平静、自信、勇敢，力量巨大，它的自信和冷漠使得它好似不易接近，也不随便对人表示友好。但实际上它是聪明、强壮且非常容易亲近的犬种。家庭的天性，非常聪明而坚强，适应性强，热爱自己的工作，是一种很好的伴侣犬、护卫犬和多用途犬种。</p>",
      originIntroduce:
        "<p>在罗马军队撤退之后，他们所携带过来的大型獒犬却被留在欧洲南方，后来这些犬便以猎取野猪而闻名于当地。在中世纪的时候，德国罗维纳德的饲育者将这种罗马品种和土著牧羊犬进行配种而得到了罗威纳犬。</p><br><p>此犬非常强壮勇敢，力量十足。因此当时有钱的商人们为了避免钱财被盗，就直接将钱袋挂在罗威纳犬的脖子上。</p><br><p>如今的罗威纳犬的饲养者专门用此犬看守家畜或做警备用，所以又称“罗威纳肉店犬”。</p><br><p>在19世纪早期，德国法律命令禁止传统的追赶牛群方式，家畜类也改由铁路运送，因此罗威纳犬的声望和需求也远远不如从前。到了1900年，罗威纳犬迷的努力才得以让此犬的名气回升，并在1930年将此犬引入到了英国和美国。</p>",
      fitIntroduce:
        "<p>罗威纳若是作为护卫犬的话，在饲养之前，要考擦它的体型和力气。它强壮的肌肉会，精力充沛，要说成长良好的罗威纳犬能够轻松的或是不经意地撂倒一个人，确实是一点都不夸张的。</p><br><p>所以不适合老年人、身体虚弱的人、或者小孩子的家庭饲养。</p>",
      measureIntroduce:
        "<p>头：头部中等长度，耳朵之间的脑袋间距宽;侧面观察额头，发现面线有适度拱起;颧弓和额鼻阶发达，上下颚强状而宽阔。颅部和吻部的理想比例为3：2。额以干燥最好，不过警惕的时候可以出现一些皱褶。鼻子直，基部宽，往鼻尖方向慢慢缩小。吻端宽而颌部发达。鼻宽而不呈圆形，黑色，唇黑色;嘴唇闭合;口内色素最好是深色。</p><br><p>眼睛：眼睛的大小中等，呈杏形，眼睑紧密，有适度的凹陷，既没有突出也不回缩。符合要求的眼睛是均匀的暗褐色。</p><br><p>耳：中等大小，下垂耳，呈三角形;警惕时，耳和颅顶平行，且显得耳变宽。耳距很大，内缘紧贴脸部，耳尖约位于颊中部。</p><br><p>颌/牙：牙齿共42颗(上牙20颗，下牙22颗)，牙齿强壮，齿系完整，呈剪状咬合。</p><br><p>颈、躯体：颈部有力，肌肉发达，中等长度，略微拱起，没有松弛的皮肤。胸宽且深，深度可达肘部，前胸突出明显，扩张性良好，肋骨呈卵形。腰短、深，肌肉发达。成年犬的下腹曲线有略微上提趋势。雄性的阴囊中必须有两颗睾丸。从前胸骨到臀部最后方的这段体长，要比肩高略长，最符合要求的肩高和体长的比例为9：10。胸深大概是肩高的二分之一。它的骨骼肌肉必须与轮廓相称，使外貌结构看起来紧凑而又充满力量。</p><br><p>背：背部直而结实，背线水平，从马肩隆后方笔直的延伸到臀部。不管是站着还是走动的状态，背部始终和地面平行。</p><br><p>四肢：前躯：肩胛长，后倾，前臂长度等于肩胛长度，因此肘部位于身体下侧。从马肩隆到肘部的距离等于肘部到地面的距离相等。腿直，强壮，有充足的骨量，腿之间距离不宜太近。脚腕结实、弹性良好，差不多垂直于地面。足爪圆而紧凑，脚趾圆拱，脚趾既不向内弯也不向外翻。脚垫厚实而坚硬。黑色的趾甲短而结实。狼爪可以被切除。</p><br><p>后躯：角度与前躯相称。上半部大腿极长且宽，肌肉发达。膝关节的角度合适。下半部大腿长、宽而有力，肌肉发达，和结实的飞节结合。后脚腕几乎垂直于地面。从后面看，后腿直而结实，彼此之间距离合适，确保能够稳当的支撑起身体。后足爪要长于前足爪一些，既不向内弯也不向外翻。脚趾和脚垫都与前肢相同。狼爪必须被切除。</p><br><p>臀：臀部宽、中等长度、略倾斜。</p><br><p>尾巴：平时，尾巴是可达上线，放松的时候，或许会悬起，或者也可断尾。不过时间久了人们可能就习惯了，因此基本上所有的罗威纳在出生之后都会断尾的，可能就是为了好看，如熊一般!不过已经有部分国家经禁止断尾了。且比赛用的犬也不强行要求断尾。</p><br><p>被毛：外层被毛直且粗硬，非常浓密，中等长度，平躺在身体上。底毛一般出现在颈部和大腿部位。头部、耳朵和腿部的毛发短，臀部的毛发则长一些。颜色为黑色带铁锈色至桃木色斑纹。黑色与铁锈色之间的划分界限是很清晰的。</p><br><p>颜色：脸颊、口吻、咽喉、胸部与腿，以及双眼和尾巴根部以下具有明显的、带有鲜艳棕褐色的斑纹。</p><br><p>步态/运动：擅长小跑，运动匀称、协调，稳当而有力，轻松自由、不受拘束，前伸和后推的伸展都显得有力。行动不费力，效率高，且步幅大。前腿和后腿既不向外也不向内摆动，后脚的足迹靠近前脚的足迹。小跑的时候，前后躯合作协调，使背部保持平稳，相对不动。加速时，腿在体下趋向中线。</p>",
      feedIntroduce:
        "<p>罗威纳犬吃什么食物比较好</p><br><p>蔬菜: 包菜,菠菜,红萝卜,土豆,紫菜,海带(不能带盐份)对毛色沉淀有非常好的帮助，或其它不用煮熟的蔬菜，罗威纳犬都可以吃，但是前提是必须要切碎、压碎之后再喂食，不然罗威纳犬很难或者根本吸收不了。菜类最好不要煮熟，如此才可以完全保留下营养成分;一般的水果也是很不错的，可以给罗威纳犬多吃点。五谷杂粮也是都能吃的，天天吃黄豆等也不错，记得必须煮烂，这些食物的纤维含量是比较高的。</p><br><p>肉类：猪肉(避免含脂肪高的部分) ，牛肉(最好在3-6成熟或不煮)，鸡肉(比较温和)，内脏(罗威纳犬都爱吃，但避免吃3禽的内脏，或者不要吃过多，每周吃了一次就要停一段时间，毕竟3禽含太多吹生素);鸡蛋对幼罗威纳犬、生完病的罗威纳犬、哺育的罗威纳犬，都是最好的营养品，尤其是蛋黄，对小罗威纳犬来说是最好的、容易吸收的;鲫鱼的话，只能喂食鱼肉。鱼类多哺乳期的母犬有帮助补充蛋白质与奶水等，不过一定要剔除鱼骨，不然会卡死犬。</p><br><p>骨头：猪骨最容易给罗威纳犬吸收，能补充钙，对肠胃好，不过就是脂肪含量太高，最好的部分是脊椎骨扇骨;牛骨的脂肪含量少，但是太硬，建议给罗威纳犬吃脊椎骨或排骨软骨，大腿骨可以给罗威纳犬啃，能帮助罗威纳犬的牙齿发育和脸部肌肉成长等。</p><br><p>汤：牛肉、猪肉、鱼、鸡等汤对犬特别好，罗威纳犬也爱喝，对幼罗威纳犬或哺育的母罗威纳犬(特别是鲫鱼汤，能增加奶水)特别好，不过谨记不可放任何调味料;牛奶或奶粉需要稀释，加水比例在30-80%，幼犬最好稀释多点，慢慢适应，不能操之过急，否则容易造成伤害或是致命。巧克力, 洋葱 (这2种是严重致命的食品)，其次是冰冷的食品、酸甜苦辣的食品等。</p>",
      identifyIntroduce:
        "<p>身高：雄性罗威纳肩高24.0-27.2英寸(61.0-69.0厘米) 雌性罗威纳肩高21.7-24.8英寸(55.0-63.0厘米)</p><br><p>体重范围：雄性罗威纳体重94.8-130.1磅(43.0-59.0公斤) 雌性罗威纳体重83.8-114.7磅(38.0-52.0公斤)</p>"
    };
  }
};
</script>

<style scoped>
.luoweina-container /deep/ .luoweina-main {
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
.luoweina-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.luoweina-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.luoweina-container
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