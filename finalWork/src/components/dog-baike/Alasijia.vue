<template>
  <div>
    <el-container class="alasijia-container">
      <el-main class="alasijia-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="alasijiaUrl" height="100%" />
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
                      <span style="color:red">阿拉斯加雪橇犬犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">阿拉斯加雪橇犬犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">阿拉斯加雪橇犬犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">阿拉斯加雪橇犬犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">阿拉斯加雪橇犬犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">阿拉斯加雪橇犬犬</span>
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
import alasijiaImg from "@/assets/img/alasijia/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      test: "jintian",
      alasijiaUrl: alasijiaImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "阿拉斯加雪橇犬",
        englighName: "Alaskan Malamute",
        otherName: "阿拉斯加犬，阿拉斯加马拉缪特，阿拉斯加马拉穆",
        area: "美洲地域、美国阿拉斯加 亚洲北部",
        address: "美洲地域、美国阿拉斯加 亚洲北部",
        shape: "大型犬",
        use: "工作犬",
        group: "工作犬，家庭犬",
        height: "58-71厘米",
        weight: " 39-56公斤",
        life: "12-20年",
        price: "500-5000元",
        style: "友善,护家,耐寒"
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
          number: 4
        },
        {
          id: 9,
          degreeName: "可训程度",
          number: 3
        },
        {
          id: 10,
          degreeName: "口水程度",
          number: 1
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
          number: 3
        }
      ],
      shapeIntroduce:
        "<p>阿拉斯加雪橇犬，其学名是Alaskan Malamute，还有一个别名是阿拉斯加犬，属于最古老的极地雪橇犬的其中之一。其名字的由来源于爱斯基摩人的伊努伊特族中一个名为马拉缪特的部落。该部落居住在阿拉斯加西部地区一个名叫科策布的岸边。此犬和一样生活在阿拉斯加的别的犬种不一样，它的四肢十分的强壮有力，而训练培养这种体态则是为了提高它的耐力，速度反而不是最重要的，因此它们主要是被用来拉雪橇的。该犬在长大成熟之后，养成了一种十分安静高雅的气质，且十分的忠心于自己的主人。而它通常对于主人的认知就是谁牵它谁就是主人。</p><br><p>阿拉斯加雪橇犬与哈士奇以及萨摩耶被称之为'雪地三傻。'</p><br><p>阿拉斯加雪橇犬是一种可爱、友好的犬，当然它也有其憨厚和稳重的一面，在成熟后有一种安静高雅的气质。它不属于一种“个人”犬，而是一种忠诚、专一的伴侣犬，对主人非常的忠诚和深情。它很干净,没有异味,不喜欢无缘由的吠叫。它有着顽强的性格和超强的方向感,非常喜欢户外运动，而且嗅觉很灵敏，能力强，适合成为出色的警备犬或工作犬，当然，也可作为家庭犬。不过该犬相比较别的犬种而言，纪律性还是较差的，较为自由和散漫，需要训练来进行约束。</p>",
      originIntroduce:
        "<p>雪橇犬，顾名思义，指的是一种在极地环境中协助主人拖曳雪橇和货物的犬种。阿拉斯加雪撬犬原产地为美国的阿拉斯加,它的名称来自阿拉斯加Mahlemuts的族名。该犬种体格匀秤，性格顽强不屈，有非常强的忍耐力。在使用雪橇的年代，马拉缪特族已经拥有这种强壮的可以在北极雪地中穿梭的犬种，让别的族类非常的嫉羡。</p><br><p>最早在北美移民的纪录上，能够发现有阿拉斯加雪橇犬的相关记载。该犬爱好户外运动，在使用雪橇的年代，马拉缪特族就已经拥有了这种体格强壮并且能够穿梭在北极雪地中的犬种，而且该族群还利用此犬为他们猎捕北极熊、狼等动物，同时还让其为他们守护驯鹿。该犬种最被熟知的特点就是体格强壮、忍耐力超强，因此在白人慢慢的也进入到北极圈之后，它们经常被用来从事探险南北极的工作。</p><br><p>中间经历了美洲被发现、阿拉斯加领地被征服，然后白人开始让北极圈内的犬种和别的外来犬种杂交。尤其是在1909~1918年，阿拉斯加流行赌赛犬，不少参加比赛的人试着将北极圈的犬和外来犬交配，期待培育出比其更好的犬种。该时期在后来被定义为“北极雪橇犬的衰落时期”，几乎让此犬种灭绝。</p><br><p>正是因为之前的杂交行为导致一些本土的犬种混杂了其他外来犬的基因，不过幸好，由于阿拉斯加的马拉缪特部落所处的地理位置十分的偏远，甚至可以称之为与世隔绝，因此反而让这一犬种延续了原始意义上的纯血血统</p><br><p>到了20世纪早期，也就是大概前20年的时候，在北美开始流行狗拉雪橇竞速赛，这是因为这个比赛让美国人开始意识到阿拉斯加雪橇犬此本土雪橇犬种的重要性，因此到了1926年，美国的雪橇犬爱好者开始以本土雪橇犬以及哈士奇为基础、系统地挑选培育血统纯正的阿拉斯加雪橇犬，也就是当时实施的纯血种保护措施。这个时间有十年之久，终于到了1935年，美国犬业俱乐部正式确认阿拉斯加雪橇犬属于一个独立的犬种。</p>",
      fitIntroduce:
        "<p>该犬非常的忠诚和有能力，而且友好可爱重感情，是一种“朋友犬”，可作为警备犬、工作犬或是家庭犬来饲养。</p><br><p>阿拉斯加雪橇犬比较害怕炎热、潮湿的环境，所以不适合居住在温热、雨量多的南方地区，而是比较适合北方。再者，因为其体型较大，而且主要是在室内饲养，所以最好能为其提供一个宽敞的有足够遮阴和充足水分的大院子，而不是空间狭小的居室。另外由于该犬每天需要进行大量的运动，所以空余时间不多过于繁忙的人士也是不适合饲养该犬种的。</p>",
      measureIntroduce:
        "<p>整体：阿拉斯加雪橇犬的黄金体型标准是：雄犬，肩高25英寸，约合63.5厘米，体重85磅，约合39公斤;雌犬，肩高23英寸，约合58.4厘米,体重75磅,约合34公斤。</p><br><p>而一般情况下，雄性阿拉斯加雪橇犬的肩高在22英寸(55.9厘米)~27英寸(68.6厘米)，雌性肩高在21英寸(53.3厘米)~25英寸(63.5厘米)，都是属于正常的可接受的范围的。有时候有体重超出120磅，也就是54千克左右的雄性，以及特地选育出身体规格特别巨大的犬只的繁育者，统一把这些被选育出来的大体态种群划分为“巨型阿拉斯加雪橇犬”。虽然在AKC和FCI方面都没有对阿拉斯加雪橇犬的体型规格上限做相关的规定，但是因为体格过大对于骨骼还有身体发育不利，因此巨型犬只这种个体对于纯种阿拉斯加雪橇犬而言，是属于不适合的类型，也不受AKC纯种犬标准所认可。</p><br><p>正常的阿拉斯加雪橇犬的骨骼必须粗壮，腿脚康健，足爪良好。胸深，肩膀有力，并且其他身体部位也需要同样的强壮和健康，如此才可以确保能担负起它们的工作任务。其行走的步态也要求要坚定、稳定且有效率。</p><br><p>头：头部高昂，宽而且深，略微隆起，但是不会显得粗糙或是笨拙，从头顶到眼睛的方向会变得窄且平，到了靠近脸部的区域则比较平坦。头部和身体的比例十分的合适。面部表情十分柔和，非常的友爱。</p><br><p>眼睛：眼睛在头部的位置略斜，褐色，形状如杏仁，中等大小，双眼之间有轻微的皱纹。。它的双眼十分的有神，表露出它们强烈的好奇心和兴趣。一般来说眼睛的正常颜色越深则越好。但是蓝色的眼睛则是不正常的。</p><br><p>耳：大小适中，不过和头部相比较还是稍显小一点。形状为三角形，耳尖的地方稍微有点圆。耳朵分的很开，在位于脑袋外侧靠后的位置，和外眼角呈一直线。 当竖着耳朵时，就好像是站在脑袋上一般。耳朵竖立起来可能也有略微的朝前倾，不过一旦它们在工作状态的时候，偶尔耳朵也会折向脑袋。一般来说耳朵的位置过高、过近或耳朵下垂都属于不正常的。</p><br><p>颌/牙：宽，牙大。门牙成剪咬合。颌上突或下突都是不宜接受的缺陷。</p><br><p>颈、躯体：颈部肌肉结实，略呈弧形。胸部肌肉也十分的发达。身躯结构比较简洁，不过不属于短小的类型。肩膀有适度的倾斜。腰部硬实、肌肉发达。一般腰部太长会削弱整个后背的美态，属于不好的。</p><br><p>背：后背很直，略微的往臀部倾斜。</p><br><p>四肢：前肢骨骼粗壮而且肢体肌肉发达，在前面看，从肩部到腕部都十分笔直。在侧面看，其腕部短而结实，略有倾斜。后腿较宽，且整个大腿的肌肉十分的发达;后膝关节有适度的倾斜;飞节也有适度的倾斜，而且是向下倾斜。在背后看，不管是在站立还是行走的状态，后腿都和相应的前腿处在同一直线，既没有分得过开，也没有靠得过近。后腿上的狼爪是不需要的，在幼犬出生后就应将其切除。</p><br><p>尾巴：尾巴的位置在脊柱的末端。在它们非工作状态时，尾巴会翻卷到背后。当然不是紧紧的卷在后背上，就是朝后翻卷的一种放松状态。尾巴上的毛也非刷子那么短。其尾巴上长着软毛，看起来就好似波浪状的羽毛。在它们蜷缩在雪地的时候，尾巴可以为它们带来温暖，它们习惯把尾巴围在鼻子和脸四周，因为这样可以帮助他们抵抗暴风雨等恶劣的天气气候。</p><br><p>颜色：阿拉斯加雪橇犬有很多种不同的颜色，通常为淡灰色至中等程度的黑色、貂 黑色。除了红色背毛的狗之外，别的颜色的狗一般均为黑色的鼻镜、眼圈和嘴唇。而红色被毛的狗有褐色的鼻镜、眼圈和嘴唇都是允许的。而且带有浅色条纹的“雪鼻”也是被允许的。</p><br><p>而下层被毛、尖部还有接合的部位的颜色是可以混杂的。唯一合格的单色为纯白色。白色通常是体下部位、部分腿部还有脚、脸部一部分的主要颜色。像头顶已经领部上有白斑，或脖子上斑点也是可接受的。</p><br><p>脚：足爪属于雪鞋型的，紧且深，搭配合适的脚垫的话，会显得十分的稳重和简洁。足爪大，足趾紧而且略微拱起，足趾间长有保护性的毛发。脚垫非常的厚实、坚韧;趾甲短而结实。</p><br><p>被毛：内层为丰厚的绒毛、外层则为质地比较硬的针状毛，整体上是类似于哈士奇的背毛，不过在某种程度上来说又要比哈士奇的背毛略微的显得粗糙一点。外层的针状毛不可以过长，质地也不可以柔软，出现这2中其中之一或全部的都是不可接受的。常见的背毛颜色多为白色与烟灰色、黑色、紫貂色、红色、砂色等颜色的组合，除了白色之外，别的颜色不管程度深浅是怎样都可接受。其面部的毛色花纹通常会呈现十字带两点白色眉毛或是全白色，又或者是介于这两者之间。</p>",
      feedIntroduce:
        "<p>阿拉斯加雪橇犬对于环境的要求非常高，因为它们来自于严寒地带，因此耐热能力很差，居住环境要长期保持凉爽。而且该犬的活动能力非常强，所以要求居住环境得足够宽敞以保证其可正常的维持充足的运动量。阿拉斯加雪橇犬体型很大，被毛很厚，喜寒不喜热。想要养好确实不容易。</p><br><p>注意事项：</p><br><p>喂养阿拉斯加雪橇犬幼犬及常识</p><br><p>1.随时备好干净的水。而且不能间断供应，尤其是出门时最好多带两瓶，不然就要花钱买矿泉水给它喝了。</p><br><p>2.喂食最好以干食为主，尽可能不要以汤食为主。在不满3个月的幼犬，喂养的食物(包括犬粮)都应用水完全泡透。</p><br><p>4. 不可暴饮暴食，饮食要规律,一次喂的量不能过多，也别饱一餐饿一餐，不然易导致胃扭转和胃出血，而且也不利于营养的吸收。最好是少吃多餐，幼犬一般每天喂食3-4次。</p><br><p>5. 食物中禁止添加人类调味料、巧克力、所有茄类(包括番茄)、洋葱(维生素A中毒)、海产品和油大的食物，在满3个月且已进行过完整的疫苗接种后，可适当配给生鸡、生排骨、生牛肉的生食喂养以完全满足钙和磷的补充，不需要额外的添加补剂。生食喂养并不会养成一般人认为的那样具有攻击性，关键还得看主人的训练技巧。煮熟的骨头不要喂，因为加热后钙化的骨质会变得坚硬多刺，比较难消化会导致大便成粉尘状。进行生食喂养的阿拉斯加犬需要每六个月进行一次口服驱虫。</p><br><p>6. 在纯狗粮喂养的情况下，如经济条件允许，建议在狗粮里混合两种营养粉，即发育宝和钙胃能。每天喂食2~3个生鸡蛋黄，可以保证会保证被毛黑亮、光滑。记住不要蛋白，因为不好消化.在它们6个月前，一定要保证营养，不然会影响到长大后的毛色及骨骼。</p><br><p>7. 不可用人类使用的洗发水，因为容易导致狗狗严重掉毛。洗完澡后需要彻底擦干，避免阳光直射潮湿的毛发，一旦中暑很可能会让阿拉斯加有性命危险。</p><br><p>9. 需要很大的运动量，最好每天带它跑步。</p><br><p>10. 居住环境不宜过分潮湿，因为阿拉斯加毛发浓密，湿气不容易散出，容易患湿疹等皮肤病。</p><br><p>11. 用的项圈最好不要太宽，不出门的情况下尽量不戴，带这个会影响狗毛的直顺度。</p><br><p>12. 小阿拉斯加犬的肠胃功能不太好，因此过于太油腻的食物不能吃，最好喂食的狗粮或是饭里都不要放油。</p><br><p>13. 在狗狗未成年之前，最好每天吃两片钙片，以保证狗狗骨骼健康发育。</p><br><p>14. 阿拉斯加毛发的自我清洁能力较强，所以不需要经常洗澡，若是环境不是特别脏，在室内喂养的话，一般2-3周洗一次就可以了。</p><br><p>15. 在换毛的阶段，准备一把狗狗专用的梳子，每天多梳几次，这样就比较不会弄的室内到处都是毛。</p><br><p>夏季喂养方法</p><br><p>夏季犬的饲料容易发酵、变质，会引起食物中毒。所以喂食的食物最好是经过加热处理后防凉的新鲜食物，要定量定时，不要有剩余。</p><br><p>由于变质食物中也许含有细菌毒素，这种毒素哪怕是经过了高温处理也不可能将其破坏。要是犬吃下了含毒素的食物，即可引起食物中毒，若是救治不及时会死亡。所以每当喂食后，若发现犬出现呕吐、腹泻，全身衰弱症状的时候，要马上请兽医诊疗。</p><br><p>夏季气温高，食欲会减退，应减少肉食，增加新鲜蔬菜和肉汤，或适当换换饲料种类，尽量多供给清水。</p><br><p>阿拉斯加在气温高、湿度大的环境中，因为体热散发能力差，所以非常容易中暑。所以要避免在烈日下活动，犬舍要搭在阴凉处，夏季为犬进行冷水浴。</p><br><p>一旦出现呼吸困难、皮温增高、心跳加速等症状时，要赶快用湿冷毛巾冷敷头部，转移到阴凉通风处，然后送兽医处。为防潮湿，要垫辱等铺垫物要勤换勤晒，在用水冲洗过犬舍后，务必等到彻底晾干后才可以放犬进去，被雨水淋湿后的犬要及时用毛巾揩干。</p>",
      identifyIntroduce:
        "<p>阿拉斯加雪橇犬通常以脸型作为挑选因素如：十字脸，桃脸，长毛，短毛等。国际上不存在哪种脸型更好的说法，因为以脸型判定阿拉斯加雪橇犬的品质不够直观。挑选阿拉斯加雪橇犬，父母的因素在国内与国际上都被认定为最重要的决定因素。所以父母的品质决定着幼犬的品质。而在父母的品质中，父亲的品质决定40%，而母亲的品质决定60%。</p><br><p>阿拉斯加犬价格:</p><br><p>阿拉斯加雪橇犬的价格也是各有标准，比如红色的狗狗比黑色的狗狗贵。一般宠物的阿拉斯加雪橇犬在1000元-2000元，有良好的血统并且有证明的，价格在2000元-4000元。赛级的阿拉斯加雪橇犬价格在5000元以上。不同城市的价格会有差异，但都不大。阿拉斯加雪橇犬在国外价格是比较便宜的。另外，巨型阿拉斯加雪橇犬价格价格一般的在3000元-5000元，好一点的品种价格上万。</p>"
    };
  }
};
</script>

<style scoped>
.alasijia-container /deep/ .alasijia-main {
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
.alasijia-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.alasijia-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.alasijia-container
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