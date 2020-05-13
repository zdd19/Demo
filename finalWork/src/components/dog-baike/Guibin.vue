<template>
  <div>
    <el-container class="guibin-container">
      <el-main class="guibin-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="guibinUrl" height="100%" />
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
                      <span style="color:red">贵宾犬犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">贵宾犬犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">贵宾犬犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">贵宾犬犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">贵宾犬犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">贵宾犬犬</span>
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
import guibinImg from "@/assets/img/guibin/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      guibinUrl: guibinImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "贵宾犬",
        englighName: "Canis lupus familiaris",
        otherName: "贵宾犬",
        area: "德国,法国",
        address: "德国",
        shape: "小型犬",
        use: "伴侣犬,玩具犬",
        group: "玩具犬",
        height: " 20-38厘米",
        weight: "  4-8公斤",
        life: "10-15年年",
        price: " 1200-1500元",
        style: "吠叫,友善"
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
          number: 5
        },
        {
          id: 2,
          degreeName: "掉毛程度",
          number: 1
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
          number: 3
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
          number: 3
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
        "<p>泰迪犬，英文名Canis lupus familiaris，该犬并非一种犬种，它指的是贵宾犬的一种美容方式的名称，也就是“泰迪装 ”，泰迪装的特征是：不剃嘴毛，毛发修剪得和橱窗里的泰迪熊玩具非常像，因为这个造型非常受到大众的喜爱和追捧，因此就将这种美容方式的贵宾犬称之为“泰迪犬”。智商在犬里排名第二。寿命大部分在10-15年。</p><br><p>泰迪其实就是贵宾犬，贵宾犬也可称为“卷毛狗”，属于非常聪明而且喜欢狩猎的犬种，现在只以展示用的毛型来引起别人的注意。该犬是目前最受人喜爱的品种之一。该犬才艺颇多，不管出于什么环境下都能表现出高贵的举止。</p><br><p>在原野上，法国贵宾犬取回在水中发现的猎鸟。而在马戏团中，由于它醒目的外形、忠诚而积极的性格，而备受犬迷的喜欢。</p><br><p>贵宾犬分为标准型，迷你型，玩具犬三种。它们之间的区别只是体型的大小不同。</p>",
      originIntroduce:
        "<p>贵宾犬，原产于法国，关于它确切的起源目前依旧不是很详细，但是起码能知道的是它源于一种猎鸟犬——长卷毛小狗，且贵宾至今已在全西欧地区有了400年的历史。</p><br><p>贵宾犬由于其卷曲的毛发，因此也可以叫做“卷毛狗”，是一种非常聪明且好狩猎的犬种，目前仅以展示用的毛型引人注意。它才艺颇佳，不管在什么环境下，都能表现出它高贵的举止体态。但是在原野上也能表现出它敏捷聪明的一面，可以为猎人将在水中发现的猎鸟取回。</p><br><p>贵宾犬分为标准型、迷你型和玩具犬三种。它们之间的区别也就是体型的大小不同而已。</p><br><p>贵宾犬在路易14～路易16时期的法国宫廷非常流行，为法国皇家女士的至宠。而后来的迷你贵宾犬和玩具贵宾犬则出现在17世纪的绘画画作中。后来这一犬种在低一些的阶层也流行起来，并在19世纪受到广泛的喜爱，尤其是在当时的马戏团中，因为它引人注目的外形，忠诚的服务和积极的性格，使它拥有许多犬迷。</p><br><p>在19世纪后期，贵宾被首次引入到了美国，不过是直到二次大战结束后，才在当地才开始流行起来，且保持着最流行品种的荣誉有20年。据美国犬类俱乐部的资料显示，在美国当地该犬是每天登记出生犬数最多的犬种之一。而作为宠物，它在我们中国现如今已形成了庞大的陪伴型宠物品种群。</p>",
      fitIntroduce:
        "<p>不会存在脱毛的问题，它的性格和特点其实最适合城市中的家庭作为宠物犬来饲养。而贵宾的多种体型适合各种人群，开朗忠实友善，不具备攻击力，护主粘人。</p>",
      measureIntroduce:
        "<p>整体：关于标准型、迷你型、玩具型的贵宾犬，它们的各项指标的标准都是一样的，除了高度、外形、姿态和状态。贵宾犬属于非常活跃、机警且行动优雅的犬种，身体结构比例完美，动作矫健，展示出它自信的姿态。再通过传统的方式对其毛发进行修剪和仔细的梳理之后，贵宾犬就表现出它与生俱来的独特而又高贵的气质。</p><br><p>整体外型：中等比例，身体协调性良好，具有卷曲或扎捆的特殊的卷毛。性格聪明活泼、警惕性强，有着匀称的比例，给人一种优雅而高贵的形象。</p><br><p>头：显着，小而圆，略有突出，呈直线型，与身体成比例。鼻梁、颊骨和肌肉平滑，枕骨到鼻梁的长度与口鼻的长度相等，而口鼻则细长且直，唇部不下垂。眼部下方略有凹陷，眼睛上方拱起;适度明显，覆盖有长毛，两眼间距很大。</p><br><p>头部的长度一定要比马隆肩高度的40%稍微大一点，不可过分大或过分沉重，同时也不能过于精细，要恰到好处。皮肤下必须线条分明。</p><br><p>头骨有着明显的形状，它的宽度要小于头长的一半。从上面观察，它的整个头骨在纵向上呈椭圆型，轮廓略有凸起。纵轴稍有发散</p><br><p>前额有皱纹，往枕骨方向逐渐变得狭窄，非常明显(迷你型的不会太明显)。止部几乎不明显。鼻子清晰，且发育良好，与枕骨垂直;鼻孔开阔。</p><br><p>眼睛：乌黑，眼睑的轮廓使眼睛成杏仁状。眼神透露出机灵，显得表情非常的聪慧而热切，处于止部的水平位置，略倾斜。黑色、白色和灰色及杏色贵宾犬的眼睛为黑色或暗褐色;而褐色贵宾犬则也许为暗琥珀色。</p><br><p>耳：很长，不过，耳朵的不可长得夸张，一定不可以比面颊长，沿脸颊两边下垂，耳根的位置和眼睛的水平线处于同一平面后稍低于后者，耳根后部变宽，耳尖圆，覆有很长的卷毛。贵宾犬的耳朵未达到嘴角，则非“优秀”级别。耳廓既长且宽，表面上覆盖着丰厚且密实的毛发。</p><br><p>颌/牙：下颚中等大小，有着清晰的轮廓，不尖细。牙齿洁白坚固，呈剪状咬合。</p><br><p>颈部：结实而修长，长度能完全帮助头部尊贵地高昂，颈背后方略拱起，中等，和身体呈良好的比例。没有垂肉。肩部的肌肉平滑、结实，肩胛骨闭合完全。</p><br><p>身躯：贵宾犬整体的躯干外型比例良好，躯干的长度一般会高于马隆肩。肩部适度发达。从地面到马隆肩的高度几乎等于地面到臀部的高度。腰短而宽，结实、健壮，肌肉匀称。</p><br><p>胸部宽阔而舒展，肋骨弹性良好，肋笼椭圆，脊背处宽。胸最深处和肘部水平，宽度相当于深度的三分之二。胸腔的周长从肩下量起，最起码要多出马隆肩的高度的10厘米。前胸大小合适;胸骨末端一定是略突出，腹部适度折起。</p><br><p>背：背线短而和谐。不拱起，也不塌陷</p><br><p>前躯：前腿很直，彼此平行，步态优雅，肌肉发达，骨骼良好。肘到地面的高度是马隆肩到地面的5/9。肩部倾斜，肌肉发达。肩胛骨和上肢形成90°至110°的角度。上肢长度与肩胛骨长度相对应。骹骨结实，但不巨大，轮廓看上去基本上是笔直的。足爪很小，脚垫厚实，呈卵形。脚趾明显圆拱，强壮而紧凑，有蹼，紧紧的连在坚硬而厚实的脚垫上。</p><br><p>黑灰两色，黑色犬的趾甲为黑色，褐色犬的趾甲为褐色，白色犬的趾甲也许是深至黑色的整个角质色系列，一定要和毛色一致。白色趾甲属于失格。杏色犬的趾甲颜色范围为暗褐色到黑色，没有最佳的颜色，在范围内的颜色均可接受。</p><br><p>后躯：从后面看，后腿笔直，两腿彼此平行，肌肉发达且非常明显。飞节关节角度明显。胫骨和跗骨之间形成很清晰的角度，避免在一些腿直立的情况下导致臀部倾斜。大腿强壮、肌肉发达。飞节垂直。贵宾犬在出生的时候后腿是不应该存在狼爪的。</p><br><p>尾巴：直，位于腰部水平处相当高的位置，向上翘。在距身体1/3处截断，或对于卷毛贵宾犬在尾巴自然长度的1/2处截断，截尾之后留下的长度能完全支持住整体的平衡。灯芯绒贵宾犬可保留尾巴的整个长度。不过长而上举的尾巴并不算失格。运动的时候，尾巴倾斜上扬。</p><br><p>颜色：非常多变，有白色、灰色、棕红色、香槟色、黑色等，小的时候毛色发浅，长大之后狗狗的毛色和耳朵的颜色一致，而胸前的颜色就较浅，在美国，有不少繁殖者会以不同颜色的贵宾来繁育不同色调的花贵宾犬。</p>",
      feedIntroduce:
        "<p>幼犬到成犬的这段成长发育期非常关键，可能会影响犬的一生和贵宾犬品质的优劣。</p><br><p>幼犬大概在出生后6个星期左右就断奶。断奶到犬龄三个月左右，喂食的时间应定在早晨7点，中午12点，下午5点和晚上10点共4次，每次狗粮颗粒不超过20粒。</p><br><p>出生第4个月到第8个月，在早、中、晚喂食，一共三次，这段时间内给幼犬的喂食量大概是成犬的1/3----1/2。</p><br><p>从断奶后2～3个月到6个月以内的几个月中，幼犬的食物构成将决定它终生的饮食习惯。若你打算将来继续用专业狗粮来饲养，那么必须在这段时间里让它适应专用狗粮的口味。</p><br><p>而若是打算以家庭配餐的方式来饲养的话，那么配备的食物则应该以动物性蛋白为主，多喂饲高热量的食物。</p><br><p>幼犬在出生2～3个月时，因为牙齿和下颚还没有完全发育好，应该把肉类切成细块再喂。像黄油、奶酪等，也是比较适合喂食的。</p><br><p>出生后6个月～1岁以内，也就是大概人的7岁左右，这段时间正是贵宾犬成长发育速度最迅猛的时期，因此所需的热量大概为成犬的1倍!这个时候要多喂食一些动物性蛋白食品。</p><br><p>贵宾幼犬时可食用泡软的幼犬粮加适量钙粉，补充营养。成年后可换成犬粮食用，更换狗粮时不要一下子全换过来，每回掺一半新的食物，试个两、三天，逐渐增加新的分量，一周后再全用新的平时，主人也可以在狗粮中添加清水煮的胡萝卜、鸡胸肉、鸡蛋黄等食物，既营养又美味。</p>",
      identifyIntroduce:
        "<p>贵宾犬对于毛发的要求非常高，因此在挑选的时候应该特别注意毛色、毛量及毛质三个方面，贵宾耳朵贴面颊最好。</p>"
    };
  }
};
</script>

<style scoped>
.guibin-container /deep/ .guibin-main {
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
.guibin-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.guibin-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.guibin-container
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