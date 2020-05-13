<template>
  <div>
    <el-container class="labuladuo-container">
      <el-main class="labuladuo-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="labuladuoUrl" height="100%" />
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
                      <span style="color:red">拉布拉多犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">拉布拉多犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">拉布拉多犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">拉布拉多犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">拉布拉多犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">拉布拉多犬</span>
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
import labuladuoImg from "@/assets/img/labuladuo/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      labuladuoUrl: labuladuoImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "拉布拉多犬",
        englighName: "labrador retriever",
        otherName: "拉布拉多、拉不拉多",
        area: "全世界",
        address: "英国",
        shape: "中型犬",
        use: "伴侣犬,工作犬,缉毒犬,军犬,导盲犬",
        group: "工作犬，伴侣犬",
        height: "54-57cm",
        weight: " 25-34kg",
        life: "8-12年",
        price: "500-10000元",
        style: "易打理,友善,易训练,耐寒"
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
          number: 2
        },
        {
          id: 5,
          degreeName: "友善程度",
          number: 5
        },
        {
          id: 6,
          degreeName: "对陌生人程度",
          number: 5
        },
        {
          id: 7,
          degreeName: "对动物程度",
          number: 4
        },
        {
          id: 8,
          degreeName: "运动量度",
          number: 4
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
          number: 4
        },
        {
          id: 13,
          degreeName: "城市适应性",
          number: 4
        }
      ],
      shapeIntroduce:
        "<p>拉布拉多猎犬,别名: 拉布拉多、拉不拉多,英文名: labrador retriever.属于一种结构坚固、中等体型、接合较短的犬,它健康、稳定性良好的结构使其可成为寻回猎物的猎犬。</p><br><p>性格温和,活泼开朗，有很高的智商，是适合被选作导盲犬或其他工作犬的品种犬，与哈士奇、金毛寻回猎犬一起，并列为三大无攻击性的犬类。</p><br><p>它在美国犬业俱乐部中，是目前登记数量最多的品种犬。</p><br><p>性格温和而沉着，聪明乖巧，易训练，对主人忠实，活泼好动但服从性良好，适合陪伴小孩玩耍，永远自足而快乐，对侵入者有很强的警惕心，是最受欢迎和最值得信赖的家庭犬。</p>",
      originIntroduce:
        "<p>拉布拉多寻回犬，起源于19世纪。在1800年之前的加拿大东南方的纽芬兰岛西岸及东南岸沿海，是当地渔民拉网上岸的好帮手。19世纪，纽芬兰的渔夫们将随身携带的拉布拉多猎犬作为一种买卖品。起初它被称为小型纽芬兰犬、黑色水猎犬、圣约翰水猎犬，和体型较大而且具有着黑色长毛的纽芬兰犬有血缘关系。这个品种很快就以猎枪犬的身份，从纽芬兰搭乘运盐船远渡到了英国，蒙兹贝利伯爵将此犬命名为拉布拉多猎犬。</p><br><p>不同类型的拉布拉多猎犬是担当不同的工作类型的;服务犬主要用来协助行动不便的残障者它们可以帮人拉轮椅、开门、开关灯、拾物品等。</p><br><p>防癫痫犬是用来帮助癫痫者在发作之前做好准备工作，它能够在主人即将发病前对主人做出警告，让主人能够及时找到一处安全等待发作。</p><br><p>各种助理犬和它们的主人之间有着一股强烈的联系，它为人带来的帮助是无法衡量的，残障者因为它们改善了生活上的不便，因而他们可以走出家门到户外享受生活，增加对生活的信心。</p><br><p>安慰犬这种功能的犬不需要像上述犬只一样做特别的训练，只要狗的脾气好，可以任人触摸，无攻击性或者太过害羞即可，当然也必需能够听从主人的指挥，像坐、卧、等候等等基本动作。通常用来做安慰犬的狗是私人拥有，他们可以跟着主人定期到各医院或疗养机构探视疾患或孤苦无依的老人或幼童，让人们自由触摸或跟它说话，以慰藉受伤或孤寂的心。</p><br><p>导盲犬主要是用来助理盲人，带他们通过马路以及拥挤的人群，帮他们开门及通过障碍物，这些工作必须要非常特殊的拉布拉多犬才能做到，它必须能够自行判断主人命令是否要遵守，必须懂得违抗不好的命令，以免让主人遭遇不测，这样的狗只能是千中选一。</p><br><p>助听犬的工作是协助失聪的听障者，在有重要的声音出现时给予警告。</p><br><p>拉布拉多猎犬的魅力之一是喜欢游水。在能室内饲养的大型犬之中，又能成为我们的好伙伴，拉布拉多猎犬可以说最好的选择了，它在全世界最受欢迎犬种流行榜中已经很多年都是排名第一的了。</p>",
      fitIntroduce:
        "<p>个性温顺友好的拉布拉多，喜欢与人亲近，无论是小孩还是老人，都能表现出让人放心，基本适合于家庭养。</p><br><p>适合郊区生活。如今该犬大多数被室内饲养，由于其成长发育速度很快，因此建议准备好较大一点的笼子或是围栏。</p><br><p>虽然它每天需要的运动量不大，但是若仅仅只是让它在室内走动也有点太局限了，最起码每天外出一次，12-20分钟左右最好;对人友善，可以适应公寓生活，是优良的家庭伴侣犬。</p>",
      measureIntroduce:
        "<p>整体：整体外型：强健的骨骼，腰部强健、接合紧密但略短;颅骨宽阔;胸部与肋骨宽且深;后躯宽阔而强健。</p><br><p>体长略大于肩高。从肘部到地面的距离为肩高的二分之一。胸部深度可延伸到肘部，但是不会给人胸部过深的印象。身躯必须有足够的长度，允许步伐直、自由且有效;但是它决不能在轮廓上显得矮、身体过长或高，或者腿细长。</p><br><p>体质：体质和骨量与整体的比例匀称。体质单薄，没有功能的无作为个体必须被干脆地摈弃，而且外形土气而笨拙的个体也是不符合要求的。</p><br><p>拉布拉多寻回犬必须显示出工作条件下的发达肌肉，不能过于肥胖。体长和肩高度的比例大概是12：11</p><br><p>头：脑袋宽阔，轮廓清晰，但不过分。脑袋和前脸处在相互平行的平面上，而且长度是差不多相等的。止部适中，眉毛略突出，因此头部到鼻尖非完整的直线。眉骨的位置间接的强调了止部的存在。</p><br><p>头部骨骼的线条清晰，面颊肉不多，眼睛下方有着清晰分明的轮廓，但是面颊不突出。头部略显示出一点中心线;成年犬只的后枕骨是不明显的。</p><br><p>眼睛：眼神锐利而友善，聪明而机敏，展现出其良好的气质。眼睛大小适中，两眼之间的间距较大，但是不可突出或位置太凹陷。</p><br><p>黑色或黄色的狗，眼睛颜色为褐色，眼圈为黑色;巧克力色狗的眼睛颜色为褐色或榛色，眼圈颜色为褐色;眼圈缺乏色素属于失格。黑色或黄色眼睛会导致表情显得刺眼，不理想。</p><br><p>耳：耳朵较大，悬挂着，恰到好处的与头部贴近，位置可以适当靠后，略低于脑袋，同时稍微比眼睛所在的水平线高。耳朵不可太大、太重，但是要和脑袋的比例协调，往前拉的时候，长度可达眼睛内侧。</p><br><p>颌/牙：颌部有力而不细长。牙齿整齐而结实，呈剪状咬和，钳状咬和也是可以接受的，但是较为不理想。</p><br><p>上颚突出式咬和、下颚突出式咬和或未能对齐的牙齿属于严重缺陷。齿系完整最为理想，缺乏臼齿或前臼齿属于严重缺陷。</p><br><p>颈、躯体：颈部长度合适，因为使其可以轻松地完成寻回工作。肌肉发达，且没有赘肉。颈部坚固地从肩胛升起，有适度的圆拱。短而粗的颈部或“羊脖子”。</p><br><p>颈身躯：拉布拉多猎犬的接合较短，肋骨支撑良好，胸部适度宽阔，整体显得非常精细。胸部不能太窄，不然会显得前肢之间空荡荡的;胸部也不宜过宽，不然会显得象斗牛犬的前躯，都是不理想的。</p><br><p>背：后背结实，在站立或者运动时，背线始终保持水平。不管怎么样，作为一种运动型的犬，它的腰部都明确地展现出良好的弹性。</p><br><p>四肢：肩胛往后倾斜，欣长而倾斜，和上臂大概成90度的角，使其可以轻松地移动前肢，达到最大的伸展程度。理想情况是肩胛骨的长度与上臂骨的长度基本上是相等的。过直的肩胛骨、过短的上臂骨、过度沉重的肌肉或抗肩膀，一切会影响到动作舒展性的地方，均是不理想的。</p><br><p>前腿：从前面看，前腿笔直且骨骼强壮。骨量适中，太大或太小都不理想，而且腿短或骨骼沉重都不是该品种的典型特征。从侧面看，肘部刚好处于马肩隆下方，前肢与地面垂直，而且位于身躯下方适当的位置。肘部贴近肋骨，无松懈的迹象。</p><br><p>后躯：后躯宽阔、肌肉发达、从臀部到飞节都非常清晰，膝关节运作良好，飞节短而结实。从后面看，后腿笔直且彼此平行。从侧面看，后躯的角度和前躯十分协调。后腿的骨骼、肌肉强健，膝关节角度适中，大腿有力而线条清晰。</p><br><p>被毛：拉布拉多猎犬的被毛非常的独特。外毛短、直，且十分浓密，触感十分坚硬。但是底毛却很柔软，而且可以抵御恶劣的气候，不管是在水中还是寒冷的地方，乃至是不同的地形条件下，都能保护好身躯不受伤害。</p><br><p>尾巴：尾巴是该品种的独特特征。根部粗壮，往尾尖方向慢慢的变细。中等长度，长度不能延伸超过飞节。尾巴上无羽状饰毛，周围都覆盖着短而浓密的被毛，因此形成了非常特别的圆形外观，被描述为“水獭”尾巴。</p><br><p>颜色：黑色、黄色、巧克力色、米白色四种。随便别的什么颜色或是颜色的组合都属于失格。</p>",
      feedIntroduce:
        "<p>刚出生到1个月的这段时间，不能够人为的去控制拉布拉多幼犬的运动量，让它自由随意的活动即可。</p><br><p>到了1-2个月，可以适当的和狗狗进玩耍，每次不超过5分钟。3个月以上可以适当增加活动量，但不宜超过20分钟。到了4-6个月，免疫全部做完的情况下可带出去散步，但是不建议疯狂的奔跑，散步为主，夏天建议早晨带出去散步及排便。6-9个月这个时期的幼犬要避免玩丢球这种强迫性的训练运动，最多就是在空旷的草地上让它自由而又不剧烈的活动。等到9-12个月就可以开始训练游泳，短距离丢接球了。12-18个月就可以轻松的骑着自行车，让它随行在后，或在草地上玩丢接球奔跑的游戏了。满18个月以上的可以进行一些能促进肌肉线条和肌肉力量的相当剧烈一点的运动。</p><br><p>忌口食物：巧克力、葡萄、洋葱、杏仁、姜、生豆角、调料类、菌类、海鲜类等都不能给狗狗吃。</p><br><p>动物肝脏可以适量食用，但是不可以多喂。</p><br><p>拉布拉多幼犬时期的生长速度是非常快的，因此建议在它们的饮食中加入更多的钙来补充身体成长所需的钙质。在六个月大之前，每天要喂食3-4次;六个月到12个月的幼犬每天喂食2次，12个月以后的成犬可以改成每天喂食1次。</p><br><p>每日推荐量：高品质的狗粮，每天2.5?3杯，分为两顿饭。幼犬时期应该将狗粮用温水泡软，在给狗狗尝食。随着长大，量可逐渐增加。除了狗粮之外也可购买些钙质粉补充狗狗的营养所需。记得每天都要给予狗狗足够的水。</p>",
      identifyIntroduce:
        "<p>拉布拉多犬是一种结构强壮、中型、略矮(以下说明)犬。他具有健全的、行动敏捷、完美平衡感的构造，使他具有当一只拾寻枪猎犬( retrieving gun dog《Bird dog》)的本能。他有在不同环境下可长时间追猎水鸟(waterfowl)或陆上猎物的本质和性格。更有适合竞赛的特质及特性 以及可以足任家庭伴侣犬的性情。这些生理及心理的特质是适宜培育为一种具备稳定的性情的拾猎犬，足以迎合不同打猎环境下的追踪工作。</p><br><p>拉布拉多最卓越的一些特色是他的短、密集且可以抗拒天候的披毛;像水獭的尾巴(otter tail);以具有宽阔头盖骨和适度的额段所构成轮廓鲜明的头部;有力的颚部;以及亲切友善的眼睛，传达出他的性格、理解力和绝佳的性情。</p><br><p>基于以上所说，一只拉布拉多必须平衡良好，使其能于赛场上或田野间工作上毫不费力的运动。一只具代表性的拉布拉多所展现的外型及品质是有教养及优雅的，从实体观之则非笨重及粗俗的。拉布拉多繁殖用处起初是作为枪猎犬，所以其结构和健康是最重要的。</p><br><p>质地-整只狗的肉质与骨骼应该相称。质轻、瘦弱的个体是明确的缺点;相对的缺点则指累赘、笨重的个体。拉布拉多应该是展现可工作 状态的发达肌肉且非过胖的。</p>"
    };
  }
};
</script>

<style scoped>
.labuladuo-container /deep/ .labuladuo-main {
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
.labuladuo-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.labuladuo-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.labuladuo-container
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