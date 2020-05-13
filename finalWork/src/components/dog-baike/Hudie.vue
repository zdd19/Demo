<template>
  <div>
    <el-container class="hudie-container">
      <el-main class="hudie-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="hudieUrl" height="100%" />
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
                      <span style="color:red">蝴蝶犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">蝴蝶犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">蝴蝶犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">蝴蝶犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">蝴蝶犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">蝴蝶犬</span>
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
import hudieImg from "@/assets/img/hudie/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      hudieUrl: hudieImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "蝴蝶犬",
        englighName: "Paoillonn",
        otherName: " 蝶耳犬、巴比伦犬",
        area: "法国",
        address: "法国",
        shape: "小型犬",
        use: "伴侣犬,玩具犬",
        group: "玩赏犬",
        height: "20-28厘米",
        weight: "3-5公斤",
        life: "13-14年",
        price: "500-1000元",
        style: "不掉毛,易训练,耐寒"
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
          number: 2
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
          number: 1
        },
        {
          id: 9,
          degreeName: "可训程度",
          number: 5
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
          number: 5
        },
        {
          id: 13,
          degreeName: "城市适应性",
          number: 5
        }
      ],
      shapeIntroduce:
        "<p>蝴蝶犬，别名：蝶耳犬、巴比伦犬，英文名：Paoillonn。活泼开朗的蝴蝶犬是以法语蝴蝶命名的。蝴蝶犬只适用于直立耳形，以前的垂耳形一般是叫蛾犬的。蛾犬和蝴蝶犬至少在16世纪时就已经产生。因此，有些专家认为此犬为欧洲最古老的品种。</p><br><p>蝴蝶犬引进法国之后，在当时可自由出入法国皇宫和贵族之门，成为权贵贵妇们的掌中珍宝。它的耳朵上覆盖着长长的毛发，直立着，犹如翩翩起舞的蝴蝶。美国和英国的蝴蝶犬爱好者就非常积极参与繁衍该品种。</p><br><p>性格温和，非常容易亲近，聪明开朗，友好而不失警惕。体格要远远比外表看起来更为强壮，喜欢户外运动。对主人有强烈的独占心，容易对第三者起妒忌之心。要好好调教。</p>",
      originIntroduce:
        "<p>关于蝴蝶犬的出身、来源是没有办法考证的，从1545年一只被买卖交易的蝴蝶犬有了文字记载之后,该犬种才开始在许多文书资料上出现。有人认为此犬的祖先是从中国传到西班牙的猎鹬犬种。</p><br><p>在16世纪, 蝴蝶犬发展良好，深受西班牙、法国贵族人士的喜爱，因此在当时毫无疑问它在犬界具有无与伦比的超高地位。如苏格兰女王玛丽就和她的爱犬-查理士王猎犬一起赴刑，还有玛丽安德渥内特，也和蝴蝶犬一起赴死刑场。</p><br><p>在16世纪时，蝴蝶犬是叫做侏儒小猎犬的，这种小型的犬只常常出现在珍贵的古老绘画或挂毯上。到了路易时代，侏儒小猎犬中体形较大的慢慢的从垂耳演变成了直立耳，两耳倾斜在头部两侧，如两片张开的蝴蝶翅膀(Papillon是法语的蝴蝶)，而且耳朵上的装饰毛如翩翩起舞的蝴蝶,由此得名蝴蝶犬，即如今的蝴蝶犬。诺班斯、瓦替欧、弗兰格纳德和博彻尔都曾经描绘过这种小犬，在那个时代的贵妇们的肖像中经常出现它们身影，足见它受欢迎的程度有多么的高。</p><br><p>虽然该犬在美国已参展多年，但是直到1935年才成立了美国蝴蝶犬俱乐部，而蝴蝶犬才那时才正式成为美国养犬俱乐部的成员。</p><br><p>到了19世纪，法国还有比利时的饲养者们主要致力发展直立耳的品种。美国和英国的饲养者则致力于改良出比其它国家的体型更小的蝴蝶犬种。</p>",
      fitIntroduce:
        "<p>蝴蝶犬性情温和，不喜乱叫，是易饲养的品种。</p><br><p>蝴蝶犬特别聪明，唯一的缺点就是掉毛比较严重，需要主人勤于为其梳理。所以饲养蝴蝶犬的主人，必须有充分的空闲时间可以自由支配，一般比较适合公寓饲养，适合上班族和老人饲养。</p><br><p>这种外观高贵的玩赏犬，虽然看起来像弱不禁风一般很柔弱，而其实呢，它适应天候和各种环境的能力非常强，所以非常适合陪伴主人到各处旅行。</p>",
      measureIntroduce:
        "<p>头：头部的尺寸和躯体的比例十分协调，不过和大中型的同类犬想必，该犬的头还是显得短一些、轻一些的。</p><br><p>头骨不管是从侧面看还是从前面看，都不是很圆，有的时候还有往中央延伸的皱纹的痕迹。</p><br><p>止部明显凹陷着。在体型稍大的犬中，这种凹陷一般是不太明显但还是能够看出来的;而在体型较小的犬中，这一凹陷就会显出清晰的轮廓，且不会突然中断。</p><br><p>止部明显凹陷着。在体型稍大的犬中，这种凹陷一般是不太明显但还是能够看出来的;而在体型较小的犬中，这一凹陷就会显出清晰的轮廓，且不会突然中断。</p><br><p>眼睛：非常大，自然张开，如杏仁状，不突出，处于头部较低的位置。黑色，眼睛的表现能力很强，眼神丰富;眼睑的颜色很深。</p><br><p>眼睛：非常大，自然张开，如杏仁状，不突出，处于头部较低的位置。黑色，眼睛的表现能力很强，眼神丰富;眼睑的颜色很深。</p><br><p>颌/牙：很强壮、紧且标准。舌头不可有露在外面;能够看见或者是当用手摸时不能收回均为缺陷。</p><br><p>颌/牙：很强壮、紧且标准。舌头不可有露在外面;能够看见或者是当用手摸时不能收回均为缺陷。</p><br><p>背：不算短，或呈拱形，虽不呈鞍状，但是也不平坦。</p><br><p>四肢：腿部肌肉结实，笔直而纤细细。看起来不可以有人为增高的痕迹;从后面或前面观察，双腿都要是平行的。</p><br><p>肩部发育良好，和躯体平滑的接合。上臂与肩胛骨长度相等，它们的夹角适当、接合自然。</p><br><p>脚很长，有“野兔脚”之称。脚趾强壮且脚垫坚硬，很好地被延伸到脚尖前部成尖状的毛发所覆盖。</p><br><p>褐色或白色被毛的犬的脚趾最好为黑色(若是白色犬，或脚为白色的犬，是有白色的脚趾，若是犬的其它颜色适当，那么这种情况也不算是缺陷)。</p><br><p>尾巴：尾根的位置很高，尾巴很长，尾毛丰富、形成可爱的羽状。运动的时候，尾巴高举，与后背成一条直线并弯曲，尾尖可触碰到背部;不允许卷曲或平躺在背上。</p><br><p>毛量充足，无下层毛，毛发整体平滑柔顺，很细，略卷曲成波状，不允许卷曲过度导致混乱。质地不软，但是非常经得起抚摸，触感如丝一般。</p><br><p>颜色：在被毛的底色为白色的前提下，是允许出现其它任何颜色的。</p>",
      feedIntroduce:
        "<p>狗粮是蝴蝶犬成长过程中必要的而且专业的食物，要知道专业的狗粮都是根据狗狗身体的特殊结构和成长过程中所需要的营养来配制而成的。不过也有不少的宠物蝴蝶犬都出现了不爱吃狗粮的情况，发生这一情况的原因也有很多：</p><br><p>1.给蝴蝶犬的狗粮分量太多，因为每顿吃得太饱，宠物狗还没来不及消化、吸收，就要再吃下一顿了，所以长此以往蝴蝶犬会因为不饿而不吃狗粮。解决这种问题其实很简单，只要让蝴蝶犬不要吃得太撑，适当适保持一种饥饿感，这样就可以长久的保持狗粮对狗有足够的吸引力，那么蝴蝶犬就不会出现不吃狗粮的情况了。</p><br><p>2.日常生活中给狗狗太多零食吃也是一个重要原因。为此，建议饲养者不要为狗狗准备过多的零食，除了在训练、调教时给与少量零食以资鼓励之外，平常的生活中就不要随意的给狗狗零食了，不然会让狗狗养成吃零食的习惯而不吃狗粮了。</p><br><p>蝴蝶犬性格温和，很好亲近，且不喜吠叫，还非常聪明，智商相当于一个五、六岁的孩子;缺点是掉毛比较严重;对主人的独占心非常强烈,会对第三者起妒忌之心。</p><br><p>若给蝴蝶犬进行配种繁殖的话，记住不能用它的近亲，不然会失去其优美的体态和被毛的优美特征。</p><br><p>蝴蝶犬是一种十分标致、优美的小型长毛犬，需要有人花大量时间来打理。它的长毛每天要用猪鬃毛刷梳理。天气冷时，每隔4～5个月洗一次澡。炎热的夏天，至少每个月洗一次澡。平时应保持其被毛洁净光润，避免沾上污物而影响美观。</p><br><p>2.及时修剪蝴蝶犬的趾爪，避免尖锐的趾爪损伤主人的衣服和身体。</p><br><p>3.蝴蝶犬很爱活动，尤其喜欢跟着主人一起外出，不管是做什么都好，喜欢总围绕在主人身边跑来跑去。所以尽量给予它适当的运动量，这有助于提升它的食欲和消化吸收的能力，从而增强体质。</p><br><p>4.重视其养分的充足摄入，每天应该为它提供150克左右的新鲜肉类食品，还应给相等数量的素食或无糖、低糖的饼干和干净的凉开水。</p><br><p>5.蝴蝶犬每年会自然换一次毛，时间一般在3-4月间，因此在这段时间不要为它修剪绒毛。</p><br><p>清洁耳朵</p><br><p>1：首先准备需要用的工具：棉签、毛巾、拔耳毛粉、而又、拔毛剪刀、棉球或者是面巾纸。</p><br><p>2：抱住蝴蝶犬，先稳住它的身体，尤其是头部，不能让它乱动。检查一下狗狗的耳朵情况，若是有耳毛，应先拔耳毛。</p><br><p>往狗的耳道内撒一些拔耳毛粉，然后捏住耳朵轻轻的揉捏1-2分钟，接着就可以开始拔耳毛了。注意，拔耳毛最好是一根一根的拔，且要保证速度尽量的快，如此便可避免狗狗疼痛。</p><br><p>拔完之后，再向蝴蝶犬的耳道内滴入一些耳油，同样捏住耳朵轻轻的揉捏1-2分钟，然后用棉签进行清理一下就行了。</p>",
      identifyIntroduce:
        "<p>整体：身高：雄性蝴蝶肩高7.9-11.0英寸(20.0-28.0厘米); 雌性蝴蝶肩高7.9-11.0英寸(20.0-28.0厘米)</p><br><p>体重范围：雄性蝴蝶体重8.8-11.0磅(4.0-5.0公斤); 雌性蝴蝶体重6.6-8.8磅(3.0-4.0公斤)</p><br><p>步态/运动</p><br><p>自信而得意、自由而随意、从容而优雅。</p>"
    };
  }
};
</script>

<style scoped>
.hudie-container /deep/ .hudie-main {
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
.hudie-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.hudie-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.hudie-container
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