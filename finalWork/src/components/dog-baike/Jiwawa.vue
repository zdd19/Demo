<template>
  <div>
    <el-container class="jiwawa-container">
      <el-main class="jiwawa-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="jiwawaUrl" height="100%" />
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
                      <span style="color:red">吉娃娃犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">吉娃娃犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">吉娃娃犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">吉娃娃犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">吉娃娃犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">吉娃娃犬</span>
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
import jiwawaImg from "@/assets/img/jiwawa/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      jiwawaUrl: jiwawaImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "吉娃娃",
        englighName: "chihuahua",
        otherName: "迷你狗、茶杯犬、芝娃娃、奇娃娃、齐花花",
        area: "美国、欧洲、亚洲",
        address: "墨西哥",
        shape: "小型犬",
        use: "伴侣犬,玩具犬",
        group: "玩赏犬",
        height: "15-23cm",
        weight: "1-3kg",
        life: " 13-14年",
        price: " 500-5000元",
        style: "无体味,易打理"
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
          number: 5
        },
        {
          id: 2,
          degreeName: "掉毛程度",
          number: 3
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
          number: 1
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
          number: 2
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
        "<p>吉娃娃犬属于小型犬中体形最小的，但是这并不能说明它们是最娇弱的，相反，吉娃娃有着坚韧的意志，非常忠诚与主人，灵活度极高，是一种聪明的宠物。姿态优雅、性格警惕、动作迅速，以匀称的体格和娇小的体型而广泛的受人所青睐。</p><br><p>吉娃娃犬不仅是可爱的小型玩具犬，同时也具备大型犬的狩猎与防范本能，具有类似梗类犬的气质。此犬分为长毛种和短毛种。这种狗体型娇小，对其他狗不胆怯，十分勇敢，能在大犬面前自卫，对主人极有独占心。</p>",
      originIntroduce:
        "<p>相传其祖先是从中国传入墨西哥后传入西班牙获得宠爱，曾被放在梳妆台上用于看管贵族妇人的首饰盒。</p><br><p>吉娃娃从墨西哥传到美国后，到1898年的历史到现在都不是很明朗。有的人确信该犬是原产于南美地区的，初期被印加族人视为神圣的犬种，后来传到阿斯提克族。也有人认为此犬是随着西班牙的侵略者来到了新世界的品种，或者是在19世纪初期从中国传入到其他国家的。</p><br><p>吉娃娃是目前人类知道对古老的犬种之一，早年分布在美国、欧洲、亚洲。并和墨西哥的文化有密切关系，是他们宗教的守护者。</p><br><p>总而言之，关于它的确切来源是众说纷纷，没有定论的。通过以上各种判断，可以说明此犬绝对不是源自一种品种，而是自古以来就是由多种品种交配而来的。</p><br><p>1923年成立吉娃娃犬俱乐部，它是美国最受欢迎的12个品种犬之一。英国吉娃娃犬俱乐部成立于1949年。是世界上最小的犬只，又称奇娃娃、齐花花玩赏犬。</p>",
      fitIntroduce:
        "<p>整体来说，吉娃娃犬是比较有个性的，从外观看起来是特别聪明伶俐的，尤其是那双水汪汪的大眼睛，性格也比较随和，唯一一点就是比较害怕陌生人，所以这种超有个性的狗狗还是比较适合单人人士和老人饲养，不适合跟儿童相处。</p><br><p>吉娃娃的身材矮小，对生活空间的要求不高，基本上像一般住所的空间就足够让它们玩耍了。它们每天的运动量也不多，也不用经常花费时间带它出去玩。非常适合居住在公寓里面的人们所饲养，而且吉娃娃能够每天待在家里，不会厌烦，因此十分适合繁忙的上班族饲养。</p><br><p>吉娃娃的寿命要受营养、生存环境、疾病状况等条件的影响。吉娃娃一般可以活到20年左右，世界上也有活到30岁的记录。吉娃娃的寿命较一般的大型犬更长，因为体型越小，心肺负担越小，则寿命更长。排除意外发生，一般情况下，吉娃娃的平均寿命为10-15年之间。</p>",
      measureIntroduce:
        "<p>整体：吉娃娃犬是世界上最小型的犬种之一，头部呈圆形，耳朵大、薄且直立，眼睛不但圆而且很大。体高15～23cm，一般体型越小越受欢迎;体重1~3公斤，最好不超过6磅。身体的比例呈长方形;因此肩到臀的长度略大于肩高。雄性的身体稍短一些则比较理想，体重超过6磅既为失格。</p><br><p>头：很圆，像是苹果头，这也是该品种的一个特色，能接受小的囟门，但最好是没有。止部十分明显，深且宽，前额在口吻底部上面一点隆起。鼻子可以是任何颜色，适当地短，略指向前方。口吻短，从侧面观察显得直，但底部宽，向尖部渐细。唇倾斜且紧贴。面部略微发育，十分整洁。</p><br><p>眼睛：大，圆形，非常具有表现力，不突出，眼睛颜色最好为暗色。允许但最好不要是浅色。</p><br><p>耳：大且直，底部宽，往略圆的而耳尖方向逐渐变细。休息的时候会往侧面倾斜，形成大概45度角。</p><br><p>颌/牙：呈剪状咬合或钳状咬合。上突、下突或者是上下颌的其它不规则情况均为严重失格。</p><br><p>颈、躯体：身躯结构紧凑。腰部肌肉非常发达。胸腔宽且深，肋骨扩张良好。从前面观察，空间大，但不过分。从侧面观察，胸深可接近肘部。胸部非桶形。腹线明显上折。腹部最好不要松弛。</p><br><p>背：背线平顺。背短且硬。</p><br><p>四肢：前躯：前腿长而笔直;从前面看，它和肘部处于同一条直线上。而从侧面看则垂直。肩部整洁，肌肉比较发达。肩胛骨和上臂之间所成适当的角度。肘部坚实，紧贴躯体，这样可以保证运动自如。骹骨略斜，强壮而灵活。</p><br><p>后躯：骨骼长，肌肉发达，与地面垂直，彼此之间相互平行，臀部、膝关节和飞节形成恰当的角度，与前躯夹角协调。飞节短，发育良好;自后面观察两腿自然自然，笔直的垂直于地面。</p><br><p>足爪很小，呈椭圆形，脚趾自然分开，但不过分(不是兔足或猫足)。趾甲拱起，显得很特别，且长度适当。脚垫发育良好，弹性良好。除非是某些国家禁止，不然狼爪是需要切除的。</p><br><p>臀：臀部宽阔而且强壮，几乎为平或略斜。</p><br><p>尾巴：尾根的位置高，外貌看起来平坦，中等长度;根部宽，往尾尖方向逐渐变细。尾举起是这种犬的一个重要特征：运动的时候，尾巴会弯曲着或者是以半圆形尖冲腰的样高举着，以便保持身体的平衡。尾不能处于后躯之间或是在背线以下卷曲。</p><br><p>尾毛因犬种不同而异，并与身体被毛一致。在长毛犬中，尾毛整体形同羽状。休息时尾会下垂并略成钩状。</p><br><p>被毛：这种犬共有两类被毛。短毛型的被毛短，质地非常柔软，丰厚而光滑(如果有下层被毛，则毛有点长)。被毛覆盖在犬身，而且有毛领尾的最好，一般头部和耳朵上的比较稀疏。尾巴上的毛发类似皮毛，丰满且长(羽状毛)。不能无毛。长毛型被毛细如丝样、光滑或略成波浪状，最好有底毛，但不能过厚。耳朵边缘有饰毛(如果耳朵比较薄，而饰毛比较多，耳朵可能会略下前倾，但决不能向下)。长毛的吉娃娃犬较怕冷。尾巴丰满且长(羽状毛)。理想情况是：脚和腿上有饰毛、后腿有短裤、脖子上有毛领。长毛型失格：被毛稀疏，近乎赤裸;被毛像涌浪一样。</p><br><p>颜色：奶油色、红色、褐色、黑色中带有黄褐色。常见的颜色为：淡褐色、栗色或白色。有斑块或斑点。任何色度的各种颜色皆可。</p>",
      feedIntroduce:
        "<p>饮食方面</p><br><p>给予的食物要保证清洁/卫生和新鲜，食盆等食具应该经常洗涮干净，进食后要提供一定清洁的饮水。</p><br><p>吉娃娃胃容量小，对于吃的，一点也不挑剔，是一只极好养的狗狗。每日推荐量：高品质的狗粮一天的1/4到1/2杯。</p><br><p>吉娃娃虽然天生饭量小，但是新陈代谢功能却非常快，所以非常容易就饿了，最好以少食多餐的方式。饲料以干饲料为主，也能适度地搭配上一些湿的饲料。吉娃娃犬非常贪食，所以喂食的时候要在一旁看着,注意别让它吃多了，免得长胖了。</p><br><p>每天给它60-90克的肉类就够了，体型稍大一点的吉娃娃，也只需每天供给150克左右的肉类，另加数量差不多的蔬菜和饼干即可。</p><br><p>由于该犬承受不了寒冷的气候，因此食物一般也建议以温热的为主。肉类应先煮熟、切碎，干饲料与温开水调和后再喂食。</p><br><p>干狗粮是吉娃娃的致命杀手，几乎80%以上的吉娃娃夭折于腹泻所致的脱水!干性犬粮相当于压缩饼干的性质，遇水后会膨胀，膨胀后的体积是干饲料体积的三倍。</p><br><p>护理：</p><br><p>吉娃娃幼犬到家后，应先到可靠的动物医院注射血清，以增强抵抗力。若出现出现发烧、流鼻涕、咳嗽、拉稀等症状,应立即就医，一定不要拖延、耽搁。</p><br><p>在饲养方面还有几个问题需要注意一下：</p><br><p>1：给它喂食不要不讲规律，什么都给它吃，要知道过量、过油、过冷的食物是容易导致它腹泻的。</p><br><p>2：应该遵照原来的喂养方式，逐渐改变饲料的方法：突然改变食物，狗狗不能适应，往往引起消化道疾病，厌食</p><br><p>3：不要玩得过分疲劳，容易导致抵抗力低下</p><br><p>4：睡觉没有铺盖或铺盖踢掉，天冷的时候，狗笼子没有围起来。</p><br><p>5：水喝的少，犬可以饿，但是一定不能断水</p><br><p>6：刚领回家的幼犬就给它洗澡，洗了不用吹风机吹干，导致受凉然后感冒。刚买来的吉娃娃，抵抗力弱、环境恶劣、护理不当，身体基础很差。尽量不要让他与生病中的狗接触。</p><br><p>7：胃部的受凉：没有给它的包上肚皮。</p><br><p>吉娃娃属于小型犬，性格活泼可爱，运动量十足，很喜欢和人待在一起，喜欢让人抱着，有些嫉妒心理。吉娃娃怕鞭炮，要注意调节和安慰。</p><br><p>吉娃娃的生物钟很准，因此晚上到了一定时间它就会困倦。如果主人熬夜，一定不要影响到它，可能偶尔还有午睡的习惯。</p>",
      identifyIntroduce:
        "<p>挑选吉娃娃犬的时候，先看吉娃娃眼睛是否炯炯有神，整体是否精神饱满 。其次看吉娃娃犬的毛色是否亮丽，有没有脱毛现象。短毛娃是比较服帖的，长毛娃是蓬松的。最后尽量选择肥壮结实的幼犬。</p><br><p>吉娃娃价格</p><br><p>现在市场上的吉娃娃，品质参差不齐，很多都是冒充纯种的吉娃娃贩卖，如果是纯种的吉娃娃，那价格肯定不便宜，但是不便宜的狗不一定就是纯种的。现在简单介绍一下吉娃娃的价格，一般的纯种犬价格以2000为底线，再好一点的品相，比如铁包金的吉娃娃，价格以5000为底线，如果要精品的铁包金价格就要过万了。相同品种的吉娃娃，公犬价格高于母犬，据说是因为公犬能够用于配种。目前市场上，纯种的吉娃娃配种一次的价格在1000-3000不等，主要是看公犬的品质。</p>"
    };
  }
};
</script>

<style scoped>
.jiwawa-container /deep/ .jiwawa-main {
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
.jiwawa-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.jiwawa-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.jiwawa-container
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