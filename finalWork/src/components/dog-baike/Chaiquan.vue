<template>
  <div>
    <el-container class="chaiquan-container">
      <el-main class="chaiquan-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="chaiquanUrl" height="100%" />
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
                      <span style="color:red">柴犬犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柴犬犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柴犬犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柴犬犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柴犬犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">柴犬犬</span>
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
import chaiquanImg from "@/assets/img/chaiquan/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      chaiquanUrl: chaiquanImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "柴犬",
        englighName: "Shiba Inu",
        otherName: "doge",
        area: "日本",
        address: "日本",
        shape: "中型犬",
        use: "家庭犬",
        group: "家庭伴侣犬",
        height: " 35-41cm",
        weight: " 8-10kg",
        life: "10-15年",
        price: "500-10000元",
        style: "无体味,易打理,易训练"
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
          number: 1
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
          number: 3
        },
        {
          id: 8,
          degreeName: "运动量度",
          number: 4
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
          number: 3
        }
      ],
      shapeIntroduce:
        "<p>柴犬为最古老的日本犬。柴犬能够应付陡峭的丘陵和山脉地势上的斜坡，感官非常灵敏，这一特点也促使柴犬一次又一次成为优秀的猎狩犬。</p><br><p>柴犬早的时候是被用来狩猎大型猎物的，不过如今则用于狩猎较小的动物。在日本，不管是城市、郊区亦或是乡村，柴犬随处可见，非常普遍。</p><br><p>柴犬的名字来自于日本的中央高地，在历史文献上，为昭和初期的日本狗保存会的会刊「日本狗」所采用。柴即打柴人的柴，用来代表小型的杂木。因为柴犬可以巧妙地穿过杂木去打猎，且它红褐色的毛色和枯萎的柴火很像，因此得到了这个名字。也有人觉得古语中的柴是把信州的柴村作为起源的意思。</p>",
      originIntroduce:
        "<p>据说该犬祖先的血统中有松狮的血脉，也有说是由中国松鼠犬和日本土产的纪州犬交配而得到的，在大概两千年前从中国传到日本的，经长期豢养培育，养成忠实、服从、忍耐的天性。1928年(昭和三年)一批日本爱犬者为保存日本犬纯正血系，成立了“日本保犬会”，保护柴犬和其它犬种。日本政府亦指定柴犬和其它6种日本犬为“天然纪念物”，1936年该犬被认定，目前每天皆有数万只柴犬被注册，柴犬主要分布在日本长野( 信州柴)，山阴阴(石州柴)，岐阜(美浓柴)，群马(十石柴)这些地区。</p><br><p>还有一种比较特别的柴犬，叫山阴柴犬，产地是日本山阴地方(鸟取县、岛根县等)，属于濒临灭绝类的珍稀柴犬系，山阴柴犬和普通柴犬在本质上还有有很明显的区别的，通常来说山阴柴犬的外型比一般的柴犬要瘦瘦，也较长。山阴柴犬起来和土狗一样，不过最让人印象深刻的是它们一到季节更替的时候会长出一些出灰色的绒毛。</p><br><p>历史上，因为太平洋战争的爆发，致使这类品种一度面临绝种的危险，不过日本有山阴柴犬育成会，他们在努力的保存这类稀有的柴犬犬种，由于山阴柴犬的发情期比较长，且一胎只能产2-3只，因此在提升数量的问题上还是颇有难度。</p>",
      fitIntroduce:
        "<p>柴犬有非常好的气质，不喜吠叫，但同样有看家护院的能力。忠实，服从而忍耐力强，适合家庭饲养。</p><br><p>柴犬作为一种中小型犬，肩高40cm左右，理想体重在21斤左右，母犬的体型相对来说会更小一点，可以很好的适应楼房环境。</p>",
      measureIntroduce:
        "<p>整体：它的腿比较长，和狗长得很像。肌肉结实而强壮，十分发达，具有自然的纯朴本性，小小的身体动作灵活、活泼好动，力量大，形态美丽。</p><br><p>雄性和雌性在整体形态上有非常明显的区别，雄性粗壮但不粗野，雌性则具有明显雌性风度但不显柔弱。</p><br><p>雄性柴犬36.8-41.9厘米，雌性36.8-39.4 厘米。理想的大小是雄性为38.1厘米，雌性为35.6厘米。雄性理想的平均体重为10.43千克，雌性为7.71千克。雄性的高和长度比为 10:11，雌性的比例比雄性略大，骨架一般。</p><br><p>头：脑袋大小适中，和身躯呈恰当的比例。前额宽而平坦，有轻微的凹槽，止部适中。表情自信，威风凛凛的凝视着。和秋田犬相比，柴犬的头部要稍微圆一点。口吻稳固，饱满圆润，结实的下颌自面颊往前突出。鼻梁很直，从止部到鼻尖形成轻微的锥形。口吻的长度占据整个头部长度的五分之二。建议保持完整的胡须，会比较理想，黑色的鼻镜。</p><br><p>眼睛：眼睛呈椭圆，略小，眼尾稍往上提，形状近似于三角形，位置深，向上往耳根外侧倾斜。眼睛颜色为深褐色。眼圈为黑色。</p><br><p>耳：小小的三角形耳朵稍往前倾，挺直竖立，两耳之间的距离较大，直接往前倾斜，倾斜的耳朵背面和圆拱的颈部相互融合。</p><br><p>颌/牙：剪状咬和，齿系完整，牙齿整齐结实。缺陷：缺齿4颗或更多，属于非常严重的缺陷。失格：上颚突出式咬和或下颚突出式咬和。</p><br><p>颈、躯体：颈部粗壮，强健有力，中等长度。身躯干燥但肌肉发达，没有任何行动迟缓或是粗糙低劣的印象。前胸十分发达。胸部的深度大约为肩高的一半或比后者略小一点。肋骨适度支撑，腹部稳固略往上提。结实的腰部。</p><br><p>背：平、短的背部，稳固。背线笔直，为水平，至尾根处结束。</p><br><p>四肢：肩胛骨和上臂骨之间的角度中等，而且长度差不多是相等的。肘部与身躯接近，既不向内弯也不向外翻。前腿和足爪分开的角度恰当，腿直且彼此平行。骹骨有一点倾斜。前肢狼爪可切除，也可不切。足爪如猫足，脚趾紧凑呈圆拱型，脚垫厚实。</p><br><p>后躯角度适中，与前躯的角度非常合适。后腿结实有力，自然的姿势是距离较宽。飞节结实，既不向内弯也不向外翻。第一节大腿长，第二节大腿则较短，不过都非常发达。后肢无狼爪。足爪与前躯一致。</p><br><p>尾巴：尾巴位置高，粗壮而有力，松弛的单卷或镰刀状尾巴，尾尖指向颈部，差不多和背部平行的姿势是最好的。若将尾巴弄直，尾长可延伸到飞节。</p><br><p>被毛：柴犬的毛质为粗短的、十分密集厚实的双层毛，外层被毛直而僵硬，内层底毛柔软而厚实。脸部、耳朵和腿部的毛发短而平。身躯上的防护性被毛直立着，马肩隆的毛发长度约l.5—2英寸。尾巴的毛稍长，浓密呈镰刀状，通常卷至背部，站立远望时精神抖擞，一看就觉得非常机敏聪明。柴犬以自然姿态出现是首选的。修剪被毛将受到严厉的处罚。</p><br><p>毛色主要为棕黄色、黄褐、棕色，也有黑色白底或黄底等色。</p><br><p>颜色：毛色主要为棕黄色、黄褐、棕色，它们的地位相同，没有偏爱。底毛也有黑色白底或黄底等色。</p>",
      feedIntroduce:
        "<p>1.饮食方面必须定时定量的喂食。柴犬属于小型猎犬/工作犬，所以食量上一般不会太大。再加上柴犬对于食物的要求不会太高。成年后的柴犬只需要喂饱就可以了。柴犬在幼小的时候就需要尤其注意饮食营养了，重点为其准备富含蛋白质和钙质等微量元素就可以了。动物性蛋白质的话，一般喂些动物内脏，例如动物心脏或肝脏，或是蛋黄、牛奶等即可。</p><br><p>2.成年柴犬建议还是以喂养狗粮为主，且注意喂食的量以不要太多，少吃多餐最佳，这样也利于狗狗的消化处。分多次喂也是有标准可循的，2至4个月大的狗一天4次，4～6个月大的一天3次，之后一天2次即可。</p><br><p>3. 柴犬是一种小猎犬，因此对运动的需求还是比较大的，要经常带狗狗去参加运动锻炼，提高柴犬对疾病的抵抗力，或者让它在室内奔跑也可以，通过锻炼来消耗过多的体能。那么它就不会再对家里的物品进行破坏了。</p><br><p>4.柴犬体型不大，而且也不怎么掉毛，所以平时的清洁护理工作还是比较容易的，不过也不能太马虎。至少每天应该为柴犬梳毛1-2次，保持毛发的清洁柔顺，避免毛发结球;每个星期为柴犬清洗3次左右的口腔，清洗1次耳朵、眼睛、肛门腺部位的卫生，确保狗狗身体干净、远离病菌的伤害;洗澡也要定期，包括修毛、修剪趾甲，确保柴犬健康美丽。</p><br><p>5.夏天应该注意降温防暑，以免柴犬中暑，感染传染疾病。冬天应该做好防寒保暖，以免柴犬感冒生病。另外，家长要定期为柴犬体内、体外驱虫，定期到医院做身体检查然后进行疫苗注射，做好犬瘟、细小等传染疾病的预防工作，保证柴犬的身体健康。</p>",
      identifyIntroduce:
        "<p>柴犬的嘴巴细长，耳朵一般为直立而且短而尖。而且被毛颜色一般有三种情况：Urajiro(奶酪色到白色腹部)，下列区域必须出现这种颜色：口吻两侧，面颊，耳朵内，下颌，喉咙上部及腿部内侧，腹部及肛门周围，尾巴侧面。 红色：一般在喉咙，前胸和胸部。黑色和芝麻色：一般呈三角形斑纹出现在前胸两侧。所有颜色中，眼睛上方出现白色斑点都是允许的，但不理想。亮橘色：红色带有Urajiro色，具有类似狐狸的外貌，整洁的红色为首选，但背部和尾巴带有少量黑色绒尖也是允许的。黑色带有棕色及Urajiro色。黑色毛发倾向于褐色，而不是兰色。</p><br><p>底毛为浅黄色或灰色。黑色与棕色之间的边界显得整齐清晰。棕色部位如下：眼睛上方有两个卵形斑点;口吻两侧，在黑色鼻梁和白色面颊之间;前肢外侧，从手腕或略高的位置，延伸到脚趾;后腿外侧，从膝关节开始变宽到前面，经飞节延伸到足爪，但后骹骨不排除黑色。脚趾有黑色铅笔纹是允许的。在耳朵内和尾巴下方也能发现棕色毛发。芝麻色(在丰富的红色底色上带有黑色绒尖)带有Urajiro色。绒尖轻盈，均匀分布在身躯和头部，没有黑色聚集的区域。芝麻色区域看起来至少有一半是红色的。芝麻色可能在前额顶部形成短行，保留红色的鼻梁和口吻两侧，眼睛上的斑点和腿下半部也是红色的。整洁的白色是允许的，但不是必须的。</p><br><p>白色斑纹出现在尾巴尖，形成短袜，从前肢足爪至肘部，从后肢足爪到膝关节。火焰状斑纹，出现在喉咙、前胸、胸部是允许的，加入Urajiro色中。严重缺陷：奶酪色、白色杂斑，及没有在前面详细描述的其他颜色斑纹，都属于缺陷，并将收到处罚。</p>"
    };
  }
};
</script>

<style scoped>
.chaiquan-container /deep/ .chaiquan-main {
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
.chaiquan-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.chaiquan-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.chaiquan-container
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