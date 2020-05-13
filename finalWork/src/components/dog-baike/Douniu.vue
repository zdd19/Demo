<template>
  <div>
    <el-container class="douniu-container">
      <el-main class="douniu-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="douniuUrl" height="100%" />
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
                      <span style="color:red">斗牛犬犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">斗牛犬犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">斗牛犬犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">斗牛犬犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">斗牛犬犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">斗牛犬犬</span>
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
import douniuImg from "@/assets/img/douniu/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      douniuUrl: douniuImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "英国斗牛犬",
        englighName: "Bulldog",
        otherName: "老虎狗、牛头犬",
        area: "英国、美国",
        address: "英国",
        shape: "中型犬",
        use: "伴侣犬,家庭犬,护卫犬",
        group: "伴侣犬,家庭犬",
        height: "51-64cm",
        weight: " 29-48kg",
        life: "12-15年",
        price: "1000-9000元",
        style: " 粘人,友善,护家"
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
          number: 2
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
          number: 4
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
          number: 4
        },
        {
          id: 11,
          degreeName: "耐寒程度",
          number: 4
        },
        {
          id: 12,
          degreeName: "耐热程度",
          number: 2
        },
        {
          id: 13,
          degreeName: "城市适应性",
          number: 4
        }
      ],
      shapeIntroduce:
        "<p>斗牛犬,英文名:Bulldog，也叫做老虎狗、牛头犬、英国斗牛犬，起源于英国的一个品种，它的面部有皱褶，成年犬体重大概在23kg，肩高在30-36cm，属于中型犬。外型古怪可爱，行走时很有绅士风度。</p><br><p>斗牛犬为不少学校、组织甚至是一些国家的吉祥物，比方说耶鲁大学的吉祥物就是一只叫作“英俊的丹(Handsome Dan)”的斗牛犬;美国印第安纳州的巴特勒大学的体育队吉祥物(Butler University bulldogs)也是一直斗牛犬;而美国海军陆战队还有英国，都是将斗牛犬作为吉祥物的。</p>",
      originIntroduce:
        "<p>斗牛犬，起源于古老的莫洛索司犬，相传在公元 13 世纪的英国地区非常流行一种活动，就是让公牛与斗牛犬相互搏斗，一直要到斗牛犬咬到公牛受伤流血、体力不支而死亡的程度，游戏才宣告结束;所有当时的人们从獒犬类中专门培育出了一种腿短、凶猛、颔部有力的狗种来满足这个残忍运动对斗牛犬的需求，而当时的这种犬据说是含有西藏马士提夫和拳狮犬的血统。</p><br><p>到了1835年，斗牛运动因为过于残忍血腥在英国被视为违法而遭到禁止。也由于这样那样的因素，英国斗牛犬就逐渐的价值低下，甚至面临灭种的危险。而一些养犬爱好者看到该品种的境况感到十分失望，因此毫不犹豫的肩负起了挽救该品种的责任。虽然该犬凶猛而且不再被需要、不再受欢迎，但是还是希望可以保留这种犬的优秀品质。后来也致力于为其消除不受欢迎的特性，保留并强化一些好的品质，终于科学的培育得到了满意的结果，经过几代的选择性培育，如今的英国斗牛犬变成了体力超强的品种之一，而且也将它原始的野性降到了最低，这也就是我们如今见到的斗牛犬，一个让人没有理由不为之自豪的品种。现在的斗牛犬更是步上了家庭犬的用途，在美国军队中更是将它们作为搜索和传递军情的专用犬。</p><br><p>而且由于用途发生了变化，以及经过了多年的培育之后，该犬激烈、锐利的性格已然改善了不少，变得温和、善良而且极富感情，不过变化最大的当属体型和挤皱的面貌。虽然外貌上还保留着原有的凶悍，令人望而生畏，但这并不妨碍它成为英国的国犬，成为英国特有的标志物了。</p>",
      fitIntroduce:
        "<p>平静而和蔼，坚定，忠诚可靠，胆大有勇气，外貌显得凶猛，但其实天性和善，不会表现出敌意或者是好斗，或许这正式英国人所喜欢的绅士风度，再加上它勇敢以及出众的忍耐力，所以被赞誉为英国的国犬。在斗牛活动被禁之后，它依旧很受欢迎。</p><br><p>沉稳，不会胡乱吠叫，对人类非常的亲切友善，尤其是小孩。</p><br><p>善解人意的犬，除了作为玩赏犬之外，它也是一位优秀的守卫犬，和出色的捕鼠犬。适合环境比较宽敞的家庭饲养。</p>",
      measureIntroduce:
        "<p>整体：理想的英国斗牛犬应该是中等体型、平滑柔顺的被毛;脸部短，头部厚重;身躯沉重、肥壮、低矮还摇晃，宽阔的肩膊和强健的四肢。整体外观和姿势显得其结构稳固，活力且充满力量。</p><br><p>成年雄性的体重大概在25-35kg;成熟雌性的体重大概在25-30kg。比例：头围和肩胛最高点的高度是相符合的。匀称性：“重点”十分分散，每个部位与其他部位的之间都非常匀称，任意部位无突出，也不凸显别的部位不足而导致外貌显得丑陋或是比例失调。</p><br><p>一般关于性别的对比，相对来说读对雌性要宽容一些，因此对雌性的要求不如雄性那般严格，也不会要求体格如雄性般雄壮。</p><br><p>皮肤显得柔软而松弛，特别是头部、颈部和肩胛处。而且头部和脸部还有沉重的皱纹，在喉咙处，从下颌到胸部有两层松弛而下垂的褶皱，形成赘肉。</p><br><p>头：脑袋很大，头部周长(耳朵前面)，最起码是和肩高差不多的。从前面看，下颌最低的角落到脑袋最高点之间的距离非常长且宽，呈正方形。而从侧面看，脑袋非常高，从鼻镜到后枕骨的距离十分短。前额很平坦，脸部也不突出或下垂。</p><br><p>面颊极圆，往两侧突出，超过眼睛的范围。太阳穴和前额骨骼非常清晰，宽、高，呈正方形，在眼睛中间形成凹槽。脸部，从面颊骨前面开始，到鼻尖的距离非常短。口吻很短、宽，往上翻起来，眼角到嘴角的部位都很深。</p><br><p>大且宽的黑色鼻镜，中间有清晰的中线，鼻尖靠后深深的位于眼睛中间。从止部底端(两眼中间)到鼻尖的距离尽可能短，不超过从鼻尖到下唇边缘的距离。</p><br><p>缺陷：鼻镜不是黑色是很糟糕的，灰色或肝色鼻镜属于失格</p><br><p>眼睛：从前面看眼睛位于脑袋上的位置较低，且尽可能的远离耳朵，眼角间的连线和止部是呈直角的。</p><br><p>耳：位置相当高，耳朵前面的内边缘和脑袋的轮廓线相连，位于脑袋顶部后，使得两者位置间距极大。耳朵还相当小且薄。为“玫瑰耳”的形状，有少数或许是内耳和边缘露出来(耳朵一定不会是立耳、纽扣耳或剪耳)。</p><br><p>颌/牙：上唇厚、宽且下垂，下垂的程度很严重，基本上完全悬垂在下颌两侧。在前面与下唇结合，当嘴巴闭起来的时候，基本上是看到牙齿的。</p><br><p>颌部厚重，非常宽，呈正方形，下颌在前面比上颌突出且向上翻。牙齿大而结实，犬齿之间的距离大，前面有六颗小牙齿处于犬齿之间，排列平整而水平。</p><br><p>颈、躯体：颈部短且极粗，颈背结实、深而圆拱。胸部和身躯都展现得十分宽阔，而身躯侧面则显得十分丰满，肋骨圆，自肩胛到与胸部结合处是很深的。身躯在肋骨支撑部位之后，腹部上提，不很圆。胸底处于肩胛和前腿之间，胸极深，产生一种极宽、矮、腿短的整体外貌形象。</p><br><p>背：背短而结实。肩胛后方稍有塌陷，紧随在肩胛之后，因为腰部最高点比肩胛顶点要稍高一点，所以往尾巴的方向会再次弯曲，形成一个拱形，成为“拱背”，更准确的说，应该是“轮形背”，这就是这个品种独特的外貌特点。</p><br><p>四肢：前躯肩胛处的肌肉发达，十分沉重，分布较宽，而且往外倾斜的，给人一种稳定、强健的视觉印象。前肢的腿短，但是笔直而结实，有着发达的肌肉，两腿间距很开，腓骨非常发达，呈弓形的外观，不过腿骨不可以弯曲或是交叉，足爪的位置也不可过于接近。肘部的位置低，往外翻，中等大小，紧凑而稳固。脚趾紧凑，上半部裂开，趾关节高，趾甲粗短。前足爪直，或略往外翻</p><br><p>后躯后腿结实，肌肉发达，稍长于前肢，这样就是的腰部比肩胛略高。飞节略微弯曲，位置也低，但是这样才能保证自腰部到飞节这部分的长度和力量都充足。后腿的下半截短、直而结实，膝关节略向外弯曲，而且离身躯稍远。所以飞节之间会比较接近，后足爪大小形状皆与前肢相同。</p><br><p>尾巴：直，或呈“螺旋”状，但是不会弯曲或是卷曲，无论哪种类型，尾巴都要求短且低垂，姿势是坚定的往下，根部粗而尖端细。若尾巴是直的，那么则呈圆柱形，锥度一致。若是呈“螺旋”状，那么纠结处的弯曲必定十分清晰，或许会显得生硬且纠结处较平，但是任何部分会高过尾根。</p><br><p>被毛：直、短、紧密，且质地细腻、平滑而有光泽，无刘海、羽状饰毛或是卷毛。</p><br><p>颜色：被毛的颜色应该均衡、类型纯净。</p>",
      feedIntroduce:
        "<p>英国斗牛犬十分怕热，过于严重的时候甚至是会出现呼吸困难的情况。运动是非常有必要的，但是要小心不可以让它剧烈的运动，比如说跑步，最好是挑清晨或是傍晚较为凉爽的时间段，以免导致犬的心脏负荷太大。时刻注意气候的变化。</p><br><p>另外，也不要给予它过量的饮食，以免营养过剩出现肥胖。英国斗牛犬一般是不需要大量运动的，除了在改良品种的过程中，因为脸部扁平、口颚紧密而造成呼吸不顺畅的普遍症状之外，它们患病的概率是很低的。与此同时要保证环境卫生和空气新鲜。尤其是夏天，要谨防中暑。</p><br><p>饲养方面其实较为简单，狗粮就可以解决一般问题，不过要记住多补充钙质和维生素。钙的话，液体钙是最好，其次是钙粉，钙片最差，因为吸收最差。</p><br><p>英国斗牛犬出现意外死亡的两个主要因素是：中毒和车祸。</p><br><p>(1)严格禁止它去翻垃圾箱，外出的时候一定要禁止它舔食外面的东西。就算不会中毒，乱吃东西也是不对的，因为很容易感染到细菌而患病的。</p><br><p>(2)必须要训好英国斗牛犬追随的习惯，它很容易跑丢，出车祸的情况也比较多。</p><br><p>2-5个月是训练英国斗牛犬的黄金时间，要是错过了这个最佳时机，之后训练的难度会增加很多。另外，在刚开始训练的初级阶段也许需要重复多次。只要养成它的好习惯，那么后期你会感觉轻松许多的。</p><br><p>要用专门的工具来梳理英国斗牛犬身上的毛发，动作要柔和细致，别太粗暴。</p>",
      identifyIntroduce:
        "<p>1、斗牛犬的头部应是较大而呈正方形，头盖在两耳间的部位比较平坦，两眼间有凹陷。</p><br><p>2、口吻应较宽深，嘴唇应较松软、宽厚，面额上肌肉发达，下颊较深，四方形，较宽而稍翘。鼻部也较宽。唇鼻皆应为黑色。</p><br><p>3、眼睛应在头盖之下，既大又圆，离耳朵较远，不突出，为暗色；耳朵基部应很宽大，耳末应圆而直立，耳根位置应较高，耳毛要精细而柔软。</p><br><p>4、颈应较短而略带拱形，颈下及喉部的皮肤应较松弛，但皮肉并不下垂。</p><br><p>5、身材应短圆，骨骼粗壮，肌肉较发达，胸部较宽深，肋部饱满而上收，肩背宽短，腰较狭，臀弯曲而腹发达。</p><br><p>8、前肢应直而短，后肢应较强壮，长于前肢，脚部大小适中，趾和爪都较短。尾巴经短截，基部粗，下垂。</p><br><p>7、被毛短细而平滑，柔软而有光泽，毛色为略呈红色的虎色、淡黄色或褐色，或有白底色的魔纹。</p>"
    };
  }
};
</script>

<style scoped>
.douniu-container /deep/ .douniu-main {
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
.douniu-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.douniu-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.douniu-container
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