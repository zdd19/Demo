<template>
  <div>
    <el-container class="bixiong-container">
      <el-main class="bixiong-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="bixiongUrl" height="100%" />
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
                      <span style="color:red">比熊犬犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">比熊犬犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">比熊犬犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">比熊犬犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">比熊犬犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">比熊犬犬</span>
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
import bixiongImg from "@/assets/img/bixiong/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      bixiongUrl: bixiongImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "比熊犬",
        englighName: "Bichon Frise",
        otherName: "特内里费狗，巴比熊犬，比雄犬",
        area: " 地中海地区",
        address: "地中海地区",
        shape: "小型犬",
        use: "玩具犬",
        group: "伴侣犬，家庭犬",
        height: "24-29cm",
        weight: " 3-7kg",
        life: "12-15年",
        price: " 3000以上",
        style: "粘人,友善,易训练,耐寒"
      },
      degreeMsg: [
        {
          id: 0,
          degreeName: "黏人程度",
          number: 4
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
          number: 2
        },
        {
          id: 4,
          degreeName: "美容程度",
          number: 4
        },
        {
          id: 5,
          degreeName: "友善程度",
          number: 4
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
          number: 3
        },
        {
          id: 13,
          degreeName: "城市适应性",
          number: 4
        }
      ],
      shapeIntroduce:
        "<p>比熊犬是一种娇小的宠物狗，比熊犬活泼可爱、聪明伶俐、友善，忠实于自己的主人，颇有个性的狗狗。</p><br><p>原产于地中海地区，原先的全称是巴比熊犬，后简称为比熊犬。怀疑是巴比特犬和水猎融犬的后代。体型娇小而强健，白色粉扑型，气质欢快活泼，从它欢快卷在背后的羽毛般尾巴以及好奇的眼神中就能体现出来。外形娇俏可爱，深受大家喜欢，现在多被当作家庭宠物来饲养，所以需要定期处理它的毛发和疾病等。比熊犬性情温顺、敏感、顽皮而可爱，逗人喜欢的特点也是判断品种是否纯正的特点之一。</p>",
      originIntroduce:
        "<p>比熊犬起源于15世纪，原产于地中海地区，可能是巴比特犬(也称巴尔勃犬)和水猎融犬的后代。比熊犬原名巴比熊犬，后简称为比熊犬。该犬最早在加那利群岛(CanaryIsland)的特纳利夫岛(Tene-riffe)进行繁衍生息的，后来跟随西班牙水手从一个洲去往另一个洲。</p><br><p>13世纪意大利的水手发现了这种小狗，然后将它们带到了欧洲大陆上，进而逐渐成为了贵族阶层的宠物。1500年，当法国入侵意大利时，法国人被比熊犬白绒绒可爱的样子迷住了，并把它作为战利品带回法国。</p><br><p>在1515年佛兰西斯一世的时候开始被进口到法国，1574-1589年是该犬发展的高峰期。在西班牙着名画家-高雅的几幅传世作品中，都能看到比熊犬栩栩如生的风采。到了18世纪后期，它一度开始衰落，最后只得随卖艺人过着风餐露宿、流落街头的生活。直到20世纪后，比熊犬才再次得以兴旺发展，甚至风靡全世界。1956年该犬正式被引进美国，1972年获得认可，1980年在伦敦克鲁福兹犬展中第一次亮相。比熊犬曾分4类;马尔它比熊犬、波隆那比熊犬、比熊哈瓦拉犬和比熊特纳利夫犬。</p>",
      fitIntroduce:
        "<p>因为它们长期和人类为伴，所以对人十分依赖且态度友善，适合作为良好的家庭伴侣犬来饲养，对于擅长照顾他人的人士而言，比熊犬是很好的选择。该犬会比较粘主人，所以需要多抽空陪它玩玩，繁忙的上班族和学生是不适合养比熊犬的。</p>",
      measureIntroduce:
        "<p>整体：就整体外貌来说，比熊犬属于小型犬，其躯体健壮，表情逗萌，蓬松的小尾巴贴在后背，有着一双充满好奇的黑色眼睛。同时它的动作优雅而灵活，非常招人喜欢。</p><br><p>标准的比熊犬肩高在9.5英寸-11.5英寸之间，体重多在3-6公斤左右。</p><br><p>身高在 24.1~29.2 厘米 , 特别优秀的可以放宽到22.8--30.5厘米, 此身高限制不适用于幼犬。</p><br><p>如果超出这个尺寸范围，但被证明是非常优秀的个体，允许适当放宽标准。但无论如何，肩高不应该超过12英寸或低于9英寸。幼犬除外。</p><br><p>头：目光柔和而深邃 ,显得好奇而机灵。头部略有突出。从鼻部到吻部凹陷的长度是从吻部凹陷处到枕部的60%。鼻头突出,呈黑色,嘴唇也是黑色,边缘锐利 , 不下坠。</p><br><p>比熊犬的颈部长并且总是骄傲的昂起来，颈部平滑地融入肩胛，整个背线水平，除了直、肌肉发达且圆拱的腰部。比熊犬的胸部比较发达，胸部最低点至少能延伸到肘部，前胸非常明显，肩胛骨与上臂骨长度大致相等，肩胛向后倾斜，大约呈45度角。</p><br><p>比熊犬的脚垫呈黑色，趾甲一般都控制在比较短的状态下，大腿角度恰当，且肌肉发达，距离略宽。足爪紧而圆，有点像猫咪的足爪，同时足爪直接指向前方。比熊犬的尾巴位置与背线齐平，温和地卷在背后。</p><br><p>比熊犬的毛发多为卷曲的白色毛发，底层毛发柔软而且非常的浓密，外层毛发多为粗毛，而且微微卷曲，质地也较硬。比熊犬的毛发主要为白色，但是在其耳朵或身躯上有存在浅黄色、奶酪色或杏色阴影。但是，只要比熊犬身躯上的其它毛色不超过总被毛数的10%，都属于可以接受的范围。</p><br><p>眼睛：眼睛圆，为黑色或是深褐色。位于脑袋上，正对前方。眼周有着黑色或非常深的褐色皮肤环绕着眼睛，可以突出眼睛并强调表情。眼圈本身必须是黑色。</p><br><p>过大或过分突出的眼睛、杏仁状的眼睛及歪斜的眼睛都属于缺陷。眼圈色素不足或完全缺乏色素，产生一种没有表情或呆滞的表情的样子，属于明显的缺陷。眼睛的颜色为黑色或深褐色以外的任何颜色都属于严重缺陷。</p><br><p>耳：下垂，隐藏在长而流动的毛发中。如果向鼻镜方向拉扯耳朵，耳廓的长度能延伸到口吻的中间。耳朵的位置略高于眼睛所在的水平线，接近眼眶骨前面，在脑袋比较靠前的位置。当犬警觉时 , 耳朵也构成面部表情的一部分。</p><br><p>颌/牙：下颌坚固，牙齿呈剪状咬和。上颚突出式咬合或下颚突出式咬合属于严重缺陷。弯曲或不成一线的牙齿是允许的，但缺齿属于严重缺陷。</p><br><p>颈、躯体：颈部呈弓形，细长 ，支撑着高昂的头，向后和肩部连接。从枕部到肩部的长度大约我为前胸到臀部的三分之一。胸部发育良好，胸廓宽，宽度允许前肢能自由而无拘束的运动。胸部最低点最少可延伸到肘头处，肋骨略突，往腹壁后延，腹部短而肌肉发达。前胸非常明显，且比肩关节略向前突出一点，沿肩关节往前伸展，腹中线有适当的起伏。</p><br><p>背：背中线水平， 在腰部肌肉肥厚处有一小的弓形。</p><br><p>四肢：骨量中等，前臂和腕部既不能呈弓形，也不弯曲。骹骨：相对垂直线而言，略显倾斜。肩胛骨、上臂骨和前臂骨的长度差不多一样。肩向后成45度角。上臂向后延伸，从侧面看，肘头刚好处在肩部隆起的正下方。腿骨发育中等，直立，在前臂和腕部未有突出或弯曲。肘头紧贴躯干。掌部与垂直处有一斜度。悬指可以去掉，足部为圆形，紧凑像猫足，行动的时候两后肢之间笔直前伸。脚垫为黑色， 爪稍短。</p><br><p>后肢也是中等程度发育 ，腿部成弓形 ，肌肉发达，较宽。第一节大腿和第二节大腿长度大致相等。后肢从附关节一直到脚垫都和笔直，与地面呈垂直，悬趾同样可去掉。足爪紧而圆，类似所谓的猫足，直接指向前方，既不向内弯，也不向外翻。趾间紧凑，脚垫为黑色。趾甲最好不要留得过长，短一点最好。</p><br><p>尾巴：尾巴被毛丰富，尾根与背中线水平，温和地卷在背后，所以尾巴上的毛发靠在背后。当尾巴向头部方向伸展时，至少能到达去马肩隆的中途。尾巴位置低、尾巴举到与后背垂直的位置、或尾巴向后下垂都属于严重缺陷。螺旋状的像公鸡似的尾巴也是严重的缺陷。</p><br><p>被毛：底毛柔软而浓厚，外层毛粗硬且卷曲。两种毛发结合在一起触摸的时候有一种柔软而坚固的感觉，拍上去就好像长毛绒或天鹅绒一样富有弹性。经过沐浴和刷子梳理之后，被毛贴在身躯上，像一种粉扑的效果。</p><br><p>颜色：比熊犬的颜色为白色，在耳朵周围或身躯上有浅黄色、奶酪色或杏色阴影。成熟个体身上的其他颜色超过被毛总数的10%，就属于缺陷。但幼犬身体上出现这些允许的颜色则不属于缺陷了。</p>",
      feedIntroduce:
        "<p>饮食管理：</p><br><p>比熊犬因为毛较长，所以喝水时常常弄脏嘴边的毛，清理比较不容易。建议用普通水瓶装水，在瓶盖上戳几个小洞，然后倒吊在距离地面较近位置或是挂笼子上的专用装水的容器，最好能让比熊抬头就可以喝到。只要让比熊接触到瓶盖，就可以舔出水来喝，且不会滴出水也不回弄脏嘴边的毛。</p><br><p>所有的东西都必须是新鲜的，上顿吃剩的要及时倒掉并洗干净餐具，保持整洁。不过，我建议最好还是喂狗粮。喂比熊犬要按时、定量、固定地址。按时能养成狗的按时条件反射，分泌胃液，增加食欲，促进消化吸收。</p><br><p>一般成年狗天天喂2次，早晚各喂1次，晚上可稍多喂。1岁以下的狗，天天喂3次;3月龄以内的狗，天天喂4次;2月龄以内的仔狗，天天喂5次。狗的食料花样可以翻新，但数目要要相对稳定。喂食地址狗舍内外都可，但一般在狗舍内喂狗。固定的地址的目的是保持环境相对稳定，便于治理。有些狗更换饲喂场所会出现拒食及食欲减退现象。</p><br><p>营养食品：胡萝卜、蜂蜜、海藻、糠：即粗粮(富含维他命B)、大麦胚芽(含维他命E)、薄荷叶和欧芹(帮助消化，防止比熊的皮肤和口腔出现臭气)、牛肝(含维他命B和丰富的铁质)、维他命C、羊肉。</p>",
      identifyIntroduce:
        "<p>比熊要选择头圆、身体短小紧凑者。被毛要柔软而直立、蓬松者。两只眼睛与鼻子成正三角形，这样的比熊犬可称之为美脸犬。前肩胛骨要高，胸部要发达，前后肢直立且无脱臼者。尾巴末端可以卷或不卷，但尾巴的起点要高，接近背部且端正背于背上。体格结实，抱起来比熊犬有重量感。</p><br><p>比熊犬价格：</p><br><p>比熊犬价格(总体价格)是非纯种的一般在200元-700元，宠物级别是800元-1000元，纯种的比熊犬一只1000元-1500元，赛级的比熊犬价格在2000元-万元不等。比熊犬幼犬目前的市场价在800元-3000元，成年比熊犬目前市场价在3000元左右。城市不同，价格也会有所不同，关键是要给狗狗做好疫苗防护工作。</p>"
    };
  }
};
</script>

<style scoped>
.bixiong-container /deep/ .bixiong-main {
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
.bixiong-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.bixiong-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.bixiong-container
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