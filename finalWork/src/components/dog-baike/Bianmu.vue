<template>
  <div>
    <el-container class="bianmu-container">
      <el-main class="bianmu-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="bianmuUrl" height="100%" />
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
                      <span style="color:red">边境牧羊犬犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">边境牧羊犬犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">边境牧羊犬犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">边境牧羊犬犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">边境牧羊犬犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">边境牧羊犬犬</span>
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
import bianmuImg from "@/assets/img/bianmu/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      bianmuUrl: bianmuImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "边境牧羊犬",
        englighName: "Border Collie",
        otherName: "边牧",
        area: "苏格兰",
        address: "苏格兰边境",
        shape: "中型犬",
        use: "牧羊犬",
        group: "牧羊犬,工作犬",
        height: "48-56cm",
        weight: " 14-20kg",
        life: "10-14年",
        price: "500-6600元",
        style: " 易训练,耐寒"
      },
      degreeMsg: [
        {
          id: 0,
          degreeName: "黏人程度",
          number: 3
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
          number: 2
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
          number: 2
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
          number: 4
        },
        {
          id: 10,
          degreeName: "口水程度",
          number: 2
        },
        {
          id: 11,
          degreeName: "耐寒程度",
          number: 5
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
        "<p>边境牧羊犬,为柯利牧羊犬之一，具有超强的牧羊能力，天性聪颖、善于察言观色，能准确的理解主人的指示，可通过眼神的注视而驱动羊群移动或是旋转，作为牧羊犬已有多年的历史。</p><br><p>该品种的特点是聪明、学习能力强、理解力高、容易训练，性格温和、忠诚、顺从 ,其忠心程度简直可以如影随形来形容。</p>",
      originIntroduce:
        "<p>边境牧羊犬是起源于17世纪，但是直到现在，当许多的工作犬和畜牧犬都进入了人类的暖炉旁而慢慢淡化它们的天生使命时，边境牧羊犬却仍旧活跃在野外、牧场，坚守着它们的岗位。</p><br><p>原产于苏格兰边境，最早时期，在苏格兰被放牧的羊还有用来看管羊群的犬都是在苏格兰群岛上被发现的，那些犬都是来源于以前从爱尔兰移居到苏格兰的教士，且是在早期维京人还没入侵苏格兰的时候就已经带过去了。在这种崎岖的地理环境里，人们也就只有依靠犬来帮忙集合、驱赶、看牧牲畜了。根据现代牧羊犬的起源，它们有着“眼神控制”这样的能力，这种能力是通过在英格兰和苏格兰的边界地方的牧羊人发展并且训练出来的，所以人们把这种犬就称作“边境牧羊犬”。",
      fitIntroduce:
        "<p>属于工作狂型的犬种，所以不适合都市生活。全世界的牧羊工作，差不多超过一半都被它们给承担了。它需要大量的运动，适合居住在宽阔的室外，不只是生活中的最佳宠物犬、伴侣犬，也是家庭中很好的看家护院犬。</p><br><p>忠诚度极高，对主人非常忠诚，不会随意乱叫，非常喜欢陪伴在主人身边，是很合适的伴侣犬。不过由于它的毛发打理工作需要比较用心的认识，因而非常适合家庭饲养。</p>",
      measureIntroduce:
        "<p>整体：边牧结构十分匀称的，体型中等，外观健壮，它显示出来的优雅气质和敏捷的动作、强健的体质都和它旺盛的精力相称。肌肉发达、身躯结实，具有平滑的轮廓，给人的印象是动作起来不费劲，十分灵敏而活泼，耐力持久。它的这些也使它成为了世界排名第一的牧羊犬。</p><br><p>头：宽阔，后枕骨不突出。脑袋的长度等于前脸的长度。具有明显的止部，脸颊深但不突出。头骨粗壮而平，处在两耳之间，往眼部的方向逐渐变窄。表情温和，但敏锐、机警而聪明。</p><br><p>口吻略短，结实且钝，鼻镜端略细，象被截断的口吻属于缺陷。</p><br><p>眼睛：中等大小，两眼相隔较宽，为尺寸适当的椭圆形。眼圈色素和眼睛颜色都为褐色;若是身体的主要颜色不是黑色，那么眼睛的颜色则会明显浅一些。眼圈色素缺乏属于缺陷。除了陨石色外，其它颜色的狗出现蓝眼睛属于缺陷。山鸟色狗单眼蓝色或两眼蓝色;单眼部分蓝色或两眼部分蓝色都是允许的。</p><br><p>耳：耳朵应当具有中等的尺寸和结构，间隔适当。耳朵竖立或半立(保持1/4到3/4的耳朵竖立)，内部应当为毛发所覆盖。</p><br><p>颌/牙：牙齿应当健全、坚固且间隔均匀，下门牙稍靠后但能接触上门牙，形成剪状咬合，下颚结实且非常发达。</p><br><p>颈、躯体：颈部：长度适中，结实且肌肉发达，略拱，往肩部方向逐渐放宽。</p><br><p>身躯：外观健壮。胸深达到肘部，宽度适中，显示出巨大的胸腔容积。肋骨扩张良好。腰部深度适中，肌肉发达，略拱，无上提。</p><br><p>背：背线水平，腰部后方略拱。</p><br><p>四肢：从前面看，前肢的骨骼发达，彼此平行。从侧面看，脚腕略有倾斜。肩胛与上臂的角度恰当。肘部既不内弯也不外翻。狼爪可切除。足爪紧凑，呈卵形，脚垫厚而结实，脚趾紧凑，适度圆拱。</p><br><p>大腿既长而宽且深，肌肉发达。膝关节角度恰当，飞节结实但位置低。从后面看，后肢的骨量充足，后肢同样直且彼此平行，不过有十分微小的不显眼的牛肢。狼爪也可以被切除。足爪和前肢一致，趾甲短而结实。</p><br><p>臀：臀部向后逐渐倾斜。</p><br><p>尾巴：位置低，中等长度，尾骨延伸到飞节，末端有向上的旋涡。在注意力集中完成任务的过程中，尾巴低垂着以保持平衡。兴奋的状态尾巴也许会上举到背部的高度。放荡的尾巴属于缺陷。</p><br><p>颜色：边境牧羊犬具有很多种颜色，有各种不同的式样和斑纹。最普通的颜色就是黑色带(或不带)白筋、白围脖、白袜子、白尾尖，带(或不带)褐色斑纹。身体出现各种不同的颜色都是允许的，惟独全白色是例外。单色、双色、三色与传统的颜色在比赛中应该一视同仁。颜色和斑纹在比赛中为次要指标，身体结构和步态才是主要指标。</p>",
      feedIntroduce:
        "<p>小狗一天4餐，6个月以后一天三餐，1岁以后可以两餐</p><br><p>建议喂犬粮，成年边牧一天7两左右，若是经济条件不允许，建议搭配犬粮或是不喂犬粮。个人建议以粗粮为主，对狗的消化系统有好处，也不会出现消化不良、便秘等问题，若一定要跟人吃，请一定注意少放盐，一般犬类对盐分的需求是人的1/6。</p><br><p>1、肉类</p><br><p>肉类可提供骨骼生长、细胞组织再生所需要的元素，也能促进新陈代谢;但光吃肉也不行，不足以满足身体所需，所以肉类的供量不要超过每顿总食量的一半。</p><br><p>2、脂肪</p><br><p>肉类和植物中所含的脂肪可以为边境牧羊犬提供身体各个部位所需要的脂肪酸，可以保持皮、毛的光泽度和健康美观。</p><br><p>3、碳水化合物</p><br><p>狗每天所需的其他营养素应从碳水化合物中摄取，比方说谷物食品、米、面团、干狗食和薯仔等。碳水化合物可以增加狗食物的分量，帮助肠胃的正常蠕动…….不易便秘。</p><br><p>边境牧羊犬应该得到很好的修饰，最少每个星期三次，这一点相当重要：首先，这是一个亲近爱犬的好机会，第二可以为它们检查身体上有没有狗虱、跳蚤的存在，有没有肿块、耳部传染病、肉垫的损害等。</p><br><p>4.注意事项</p><br><p>a、注意边境牧羊犬不能用什么药物,会对哪些药物有过敏反应。</p><br><p>b、除跳蚤最直接最基础的做法就是讲清洁卫生，尽可能不要让你的狗去草丛，不要与脏狗接触，预防工作要放在第一位;若是已经出现了跳蚤之类的，建议用除螨除蚤的浴液为狗洗澡，并辅助用一些驱除药剂。</p><br><p>c、个人感觉边牧对细菌的抵抗力极低，犬五联是一定要打的，脑炎和狂犬也建议打，疫苗都是弱毒不会有害犬体健康，不过记得打疫苗之前要先测量体温，别再狗虚弱的情况下打疫苗，否则易发生危险。</p>",
      identifyIntroduce:
        "<p>雄性的肩高范围在19-22英寸(48-56cm);雌性的肩高范围在18-21英寸(46-53cm)。身体长度(从肩胛末端到臀部的距离)比肩高稍大一点。骨骼结实，但不会显得夸张，和整体尺寸的比例协调。整体的高度、长度、体重、骨量的匀称是非常关键的，比任何一个单一的特征都要来的重要。体重超标不应该误认为是肌肉或骨量造成的。任何单一特征影响整体的平衡将被认为是缺陷。</p>"
    };
  }
};
</script>

<style scoped>
.bianmu-container /deep/ .bianmu-main {
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
.bianmu-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.bianmu-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.bianmu-container
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
  font-size: 18px;
}
</style>