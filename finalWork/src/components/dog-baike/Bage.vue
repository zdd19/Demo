<template>
  <div>
    <el-container class="bage-container">
      <el-main class="bage-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="bageUrl" height="100%" />
                  </div>
                </el-col>
                <el-col :span="12">
                  <div class="dog-msg">
                    <div class="msg-title">
                      <span>{{ dogMsg.name }}</span>
                    </div>
                    <div class="msg-englishname">
                      <span>{{ dogMsg.englighName }}</span>
                      <img :src="boneUrl" style="margin-left:10px;" />
                    </div>
                    <div class="msg-details">
                      <div>
                        <span class="msg-little-title">别 名：</span>
                        <span class="msg-little-content">
                          {{
                          dogMsg.otherName
                          }}
                        </span>
                      </div>
                      <div>
                        <span class="msg-little-title">分 布 区 域：</span>
                        <span class="msg-little-content">
                          {{
                          dogMsg.area
                          }}
                        </span>
                      </div>
                      <div>
                        <span class="msg-little-title">原 产 地：</span>
                        <span class="msg-little-content">
                          {{
                          dogMsg.address
                          }}
                        </span>
                      </div>
                      <div>
                        <span class="msg-little-title">体 型：</span>
                        <span class="msg-little-content">
                          {{
                          dogMsg.shape
                          }}
                        </span>
                      </div>
                      <div>
                        <span class="msg-little-title">功 能：</span>
                        <span class="msg-little-content">{{ dogMsg.use }}</span>
                      </div>
                      <div>
                        <span class="msg-little-title">分 组：</span>
                        <span class="msg-little-content">
                          {{
                          dogMsg.group
                          }}
                        </span>
                      </div>
                      <div>
                        <span class="msg-little-title">身 高：</span>
                        <span class="msg-little-content">
                          {{
                          dogMsg.height
                          }}
                        </span>
                      </div>
                      <div>
                        <span class="msg-little-title">体 重：</span>
                        <span class="msg-little-content">
                          {{
                          dogMsg.weight
                          }}
                        </span>
                      </div>
                      <div>
                        <span class="msg-little-title">寿 命：</span>
                        <span class="msg-little-content">
                          {{
                          dogMsg.life
                          }}
                        </span>
                      </div>
                      <div>
                        <span class="msg-little-title">参 考 价 格：</span>
                        <span class="msg-little-content2">
                          {{
                          dogMsg.price
                          }}
                        </span>
                      </div>
                      <div>
                        <span class="msg-little-title">特 点：</span>
                        <span class="msg-little-content">
                          {{
                          dogMsg.style
                          }}
                        </span>
                      </div>
                    </div>
                  </div>
                </el-col>
              </el-row>
              <el-row style="margin-top:32px;">
                <el-col :span="24">
                  <div class="degree-msg">
                    <div v-for="item in degreeMsg" :key="item.id">
                      <span>{{ item.degreeName }}</span>
                      <div>
                        <span v-for="(a, index) in item.number" :key="index">
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
                      <span style="color:red">巴哥犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">巴哥犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">巴哥犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">巴哥犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">巴哥犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">巴哥犬</span>
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
import bageImg from "@/assets/img/bage/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      bageUrl: bageImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "巴哥犬",
        englighName: "pug",
        otherName: "八哥犬/哈巴狗",
        area: "中国内地",
        address: "中国",
        shape: "小型犬",
        use: "伴侣犬,玩具犬",
        group: " 伴侣犬、守门犬",
        height: "25-28cm",
        weight: " 6-8kg",
        life: "13-14年",
        price: "1200-3000元",
        style: "不掉毛,易打理,护家"
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
          number: 2
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
          number: 3
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
          number: 1
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
          number: 2
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
        "<p>巴哥犬起源于公元前400年, 是一种历史非常悠久的犬种，据专家推断原产地是中国西藏，当时又称骡子狗、“福狗”(仍需要考证)，与京巴和狮子狗同为我国最早培育的短鼻子狗种。现代的“巴哥”之名是英文“pug”音译而来的，pug在英文里是“拳头”的意思，得此名据说是因为巴哥的头很像捏紧的拳头。</p><br><p>它是一种性情稳定的小型犬种，性情开朗、富有魅力、高贵、友善和可爱。它不需要运动或经常整理背毛，但需要同伴。以咕噜的呼吸声及象马一样抽鼻子的声音作为沟通的方式。同时，此犬爱干净的个性是其广受喜爱的原因之一。</p>",
      originIntroduce:
        "<p>巴哥犬原产于中国。据考证它同北京犬很可能来源于相同祖先，是一个古老的东方犬种。最早是荷兰水手与商人从中国带到欧洲和荷兰的，因受到荷兰王公贵族的宠爱而一度称为荷兰犬。目前八哥犬遍布世界各地，很受欢迎。早在汉朝时，巴哥犬同中国的绸缎经丝绸之路流入国外。葡萄牙商人于1516年、西班牙商人于1575年、荷兰人于1604年、英国人于1634年在与中国通商的同时，均把巴哥犬带回本国。尔后俄国(彼得大帝时代)、法国、英国商人也相继把此犬带回本国。</p><br><p>1553年，巴哥犬随土耳其舰队来到法同，仕女们喜不自禁，呢称为“小土耳其犬”。1689年威廉王子和妻子玛丽到英格兰接替王位时就带了一批巴哥犬随行，它们在王室倍受宠爱，其地位同北京犬在中国宫廷地位可相媲美。</p><br><p>巴哥犬究竟是什么系种?有专家认为，此犬产于苏格兰低地，传到亚洲后边在由荷兰商人从远东地区带回西方;也有专家认为，此犬是东方犬种，源自北京犬的短毛种，后来和斗牛犬交配而成;还有人认为巴哥犬是法国的獒犬的小型类种，并且在许多作品里画上巴哥犬作装饰品。维多利亚世代，此犬的知名度达到顶峰。巴哥犬,英文名Pug，国内也叫哈巴狗或巴儿狗。18世纪末正式命名为“巴哥”，其词意古语为鬼，狮子鼻或小猴子的意思。。第一批巴哥犬自中国输出至国外是在十六世纪中期由土耳其人带到法国;尔后在十七世纪时，与中国商业有重要往来的荷兰东印度公司更是将为数不少的巴哥犬介绍到世界各地，而它在国外能够成为皇帝最喜爱犬种的契机是得力于光荣革命时继承王位的奥伦治威廉王子，当然它的犬只数量在国外也曾大量锐减，直到十九世纪末期巴哥犬协会成立之后，才将犬只数目提高了不少，并且持续地进行改良成今天的犬种标准。</p>",
      fitIntroduce:
        "<p>它不需要太多户外活动，所以很适合在公寓内饲养。八哥犬的训练容易度一般，不需要运动或经常整理背毛，但需要同伴，最适宜找外人来训练，八哥犬很会保护主人，当有陌生人靠近就会吠得很厉害。容貌皱纹较多，走起路来象拳击手是其特征。适合做老年人的家庭伴侣犬。</p>",
      measureIntroduce:
        "<p>整体：小中见大，也许可以形容为浓缩，结构紧凑、良好的比例，而且口吻轮廓硬。理想的体重范围是从14~18磅(公狗或母狗)。比例为正方形。</p><br><p>头：头部大、粗重，不上拱，苹果头，前额不后缩。</p><br><p>眼睛：眼睛颜色非常深，非常大，突出而醒目。球状，眼神充满安详和渴望。非常亮，兴奋时，充满热情。</p><br><p>耳：耳朵薄、小、软、象黑色天鹅绒。有两种耳形：玫瑰耳或纽扣耳。后者比较理想。皱纹大而深。</p><br><p>颌/牙：口吻短、钝、宽，但不上翘。咬合应该是轻微的下颚突出式咬合。略向下突。嘴、牙齿或舌扭曲则为失格。宽下颌上门牙排列整齐，几乎成一条线。</p><br><p>颈、躯体：颈部、背线、身躯：颈部呈轻微的拱形，粗壮，其长度足够使头能高傲的昂起。背短，背线水平。身体短而胖，胸宽且肋骨扩张良好。尾巴尽可能卷在臀部以上部位。多重卷曲则更理想。</p><br><p>躯体短，像矮脚小马。颈部轻微拱起如冠，粗壮，其长度足以使头高昂举起。</p><br><p>背：背线平，不拱起也不下塌。</p><br><p>四肢：前躯：腿非常粗壮，直，长度适中，位于身体下。从侧面看，肘部直接安在肩膀下面。腕部结实，既不过分，也不向下。足爪既不象兔足那样长，也不象猫足那样圆。脚趾适当分开，黑色趾甲。狼爪一般通常被切除。</p><br><p>后躯：粗壮，有力的后躯，后膝关节角度适中，飞节和地面垂直。从后面往前看，两腿相互平行。前后躯平衡，大腿和臀部丰满而且肌肉发达。足爪与前躯相同。</p><br><p>臀：臀部丰满而且肌肉发达。</p><br><p>尾巴：尾(扭曲)：位置高，紧紧地卷曲在臀上部。两次卷曲最好。</p><br><p>脚：既不象野兔的脚那样长，也不如猫足那么圆，脚趾分开适度，有黑色的趾甲。</p><br><p>颜色：银色、杏黄色、浅黄褐色或黑色。每一种均被明确界定，从而使颜色、迹线(自枕骨延伸至尾部的迹线)和面部之间形成完全对比。斑纹也被明确界定。口吻或嘴周围、耳、胸上斑点、额上面的拇指印或钻石形、迹线等的颜色要尽可能为黑色。</p>",
      feedIntroduce:
        "<p>只需适当的运动，在大热天不要过多运动。每天用刷子梳理，用丝绸手帕按摩可使毛发更光亮。</p><br><p>一般买回来都是2-3个月大的，牙还没长好，可以买奶糕给他泡一泡再喂。小狗不能喂多，一次不到一把就可以了。少量多餐。</p><br><p>等到4个月大，你看它牙长齐了就可以直接喂幼犬狗粮了。</p><br><p>总之，狗狗不怕饿，怕撑。尤其小的时候消化系统弱，消化不好会拉肚子还会引起并发症。消化不完全还会出现狗狗自己吃自己的便便这种尴尬的情形。所以要适量。</p><br><p>这个“适量”你可以根据狗狗的便便来判断。拉的稀了，下次少喂点;拉的干了，下次给他多加一点。这样就能找到合适的量了。</p><br><p>肉类(牛肉、鸡肉、鱼肉)一定要新鲜，鱼要剔好刺，喂食多少要根据犬的体重来定，一般180-220克就很合适了，不能喂过量，不然会发胖，就不可爱了。</p><br><p>除肉类外，还要喂些蔬菜以及煮熟的豆类或不含糖或少糖的饼干等素食。肉类应先加少量水煮15-20分钟后切碎再喂。肉类所以要煮熟，一是为了增加香味，引发食欲;二是为了杀灭肉中的细菌和寄生，以防患病。</p><br><p>巴哥犬是一种较贪食的犬类，所以一定要掌握好供食的量。喂饲时要定时定点，以养成其良好的进食习惯。</p>",
      identifyIntroduce:
        "<p>虽为短毛狗，但是巴哥一样会季节性地换毛，如果有卖狗的人告诉你象巴哥这样的短毛狗不掉毛或很少掉毛那一定是在骗你。</p><br><p>其实人也一样会掉头发，只不过你头发的数量远不及你的狗身上的毛多，所以便不太觉得了。世界上没有不掉毛的狗--除非没有毛。</p>"
    };
  }
};
</script>

<style scoped>
.bage-container /deep/ .bage-main {
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
.bage-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.bage-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.bage-container
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
