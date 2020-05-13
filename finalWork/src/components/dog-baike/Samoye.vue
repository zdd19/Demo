<template>
  <div>
    <el-container class="samoye-container">
      <el-main class="samoye-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="samoyeUrl" height="100%" />
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
                      <span style="color:red">萨摩耶犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">萨摩耶犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">萨摩耶犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">萨摩耶犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">萨摩耶犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">萨摩耶犬</span>
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
import samoyeImg from "@/assets/img/samoye/2.png";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      samoyeUrl: samoyeImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "萨摩耶",
        englighName: "Samoyed",
        otherName: " 萨摩,萨摩耶德犬,萨摩耶犬,西摩犬",
        area: "西伯利亚",
        address: "北俄罗斯和西伯利亚",
        shape: "中型犬",
        use: "工作犬",
        group: "工作犬",
        height: "48-59cm",
        weight: " 23-30kg",
        life: "12-15年",
        price: "500-3000元",
        style: "不掉毛,无体味,吠叫,友善,耐寒"
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
          number: 3
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
          number: 4
        },
        {
          id: 7,
          degreeName: "对动物程度",
          number: 5
        },
        {
          id: 8,
          degreeName: "运动量度",
          number: 3
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
          number: 5
        },
        {
          id: 12,
          degreeName: "耐热程度",
          number: 1
        },
        {
          id: 13,
          degreeName: "城市适应性",
          number: 3
        }
      ],
      shapeIntroduce:
        "<p>萨摩耶犬长得非常精致，可爱迷人的微笑、引人注目的外表以及强健的体格，都让人们对它影响深刻，尤其是一岁之前，调皮机灵，十分惹人怜爱。</p><br><p>最早萨摩耶是有不同毛色的，像黑、黑白以及黑褐，但是到了19世纪的时候，毛皮商人觉得白色的会最受欢迎，所以只将白色的萨摩耶犬大量出口到了欧美等国家。</p><br><p>如今大多数的人选择饲养萨摩耶，主要是以为它性格好，不会影响邻里关系。萨摩耶犬虽然体格强壮，但从来不会主动惹是生非，不管是对其它的动物还是人类，都非常友好。总是安静地呆着，只要对方不故意来招惹它，它就绝对不会发出挑衅。对人类虽然热情，但也很有分寸，不会太过粘人，很少动不动就把爪子搭到人的身上。</p><br><p>这或许与它过去的生活环境有关，因为在冰天雪地的气候下，人类并不喜欢饲养的狗狗动不动就跑过来表示亲热，因此在漫长的时光中，萨摩耶也习惯了这样的相处方式，从而逐渐变得越来越文静。当然，这只是个人臆测，或许天性使然也不一定。</p><br><p>萨摩耶犬有着旺盛的精力，但是从来不会无缘无故地大声吠叫，所以适合生活在城市家庭，家长完全不用担心它扰民。</p><br><p>不过它们很有可能会处于好奇或是无聊而在家里“探险”，把家里翻个底朝天。不过，我相信，与不停的吠叫相比，家长们应该更愿意回家后静静收拾烂摊子吧，毕竟不会打扰到别人，也就不用三五不时地带着礼物去赔礼道歉。</p>",
      originIntroduce:
        "<p>萨摩耶犬起源于17世纪。最初它们主要被用来拉雪橇、拖拽重物以及看守驯鹿，在欧洲，一些探险家均喜欢用它来协助自己从事南北极探险的工作。</p><br><p>原始的萨摩耶犬是由一个叫萨摩耶德的游牧部落培育出来的，该部落定居在乌拉尔山以东的极地地区。于19世纪末期，毛皮商人发现了这种毛发丰厚的极地犬，然后将其出口到了美国和欧洲等其他地区。英国人们对它雪白的毛色爱不释手，因为在当地得到了极快的发展。</p><br><p>到了20世纪初期，北极探险运动的发展空前火爆，在这个热潮中，萨摩耶就因为协助人们顺利地完成探险任务，而获得了极大的殊荣。</p>",
      fitIntroduce:
        "<p>如果家里的活动空间足够宽敞，且你有比较多的空余时间空余陪它玩耍的话，那么萨摩耶犬自然是适合家养的，能够很好地生活在人类家庭。</p><br><p>萨摩耶犬来自极寒地区，有着丰厚的毛发，耐寒能力极强，当然，耐热能力也极差，十分怕热，所以到了夏天，尽量让它呆在有冷气的室内，少外出暴晒，以防中暑。</p><br><p>萨摩耶的活动需求比较大，喜欢运动，热爱户外生活。所以它最喜欢住在郊区，若是主人家是房子有院子，有围栏就更好了。</p><br><p>萨摩耶性情温顺，乖巧听话，能够和其他的动物和谐共处，所以家里养了其他宠物的话，就不用担心萨摩耶会相处不来了。</p>",
      measureIntroduce:
        "<p>整体：身高：公犬53.3-59.7 厘米，母犬48.3-53.3 厘米。</p><br><p>公犬有毛领状的饰毛，母犬没有。萨摩耶犬的背部不可以太长，否则容易使背部软塌，不挺拔，没办法完成工作。当然，身体结构也不能太紧凑，同样不利于完成拉雪橇的工作。整体外观上来看，萨摩耶应该给人一种力量十足、忍耐力强、乖巧顺从、优雅自信的印象。</p><br><p>它萨摩耶式的微笑非常迷人，被称之为微笑天使，这种表情就是由眼睛的轮廓和姿势，以及略微弯曲到嘴角上方而形成的，是一个典型的标志。</p><br><p>重要比例：身长大约超过肩高的5%。身体深处比肩高的一半略低。口鼻差不多和头骨一般长。</p><br><p>头：颅、吻部、体形以及头骨之间形成一个恰当的比例，呈三角形的外观。吻部要有一定的厚度。胡须不允许修剪。黑色的鼻镜最为理想，不过棕色、肝色以及炭灰色也是可以接受的。有时，鼻镜的颜色会随着年龄、气候的变化而变化。嘴唇为黑色，比较丰满的最好，嘴角上翘，就好像在冲你微笑。嘴角处的嘴唇绝对不能下垂。</p><br><p>眼睛：杏仁状，眼睛颜色深一些比较理想，两眼之间的间距比较大，且深;下眼睑指向耳根。深色的眼圈比较理想。</p><br><p>圆眼睛或突出的眼睛均属于缺陷;蓝眼睛则属于失格。</p><br><p>耳：厚且结实，直立的三角耳，尖端略圆。耳朵的大小是根据头部的尺寸以及整体的大小来确定的，太大、太小或太尖都不可以。两耳的间距比较大，靠近头部外缘，灵活挺拔，上面覆盖着厚厚的毛发。耳内长着毛，耳前的毛量多，且直立。耳朵的长度应该和耳根内侧到外眼角的距离一致。</p><br><p>颌/牙：牙齿整齐，结实强壮，呈剪状咬合。上下颌不可以过于突出。</p><br><p>颈、躯体：颈部结实，肌肉发达，脑袋骄傲地昂着，显得力量十足。颈部和肩部的衔接自然而融合，形成一个优美的拱形。胸深，肋骨从脊柱往外扩张，到两侧处变平，不会影响到肩部的动作，能够自由运动，但是不能呈桶状胸。理想的深度应该是可达到肘部，最深的部分应该在前肢后方，约第九条肋骨的位置。足够深的胸能够为胸腔内的心脏以及肺部提供足够的空间，但是胸深要大于胸宽。马肩隆就是背部的最高点，腰部结实而略拱。身体的比例差不多为正方形。腹部肌肉结实紧绷，腹部收拢。</p><br><p>背：背直，中等长度。</p><br><p>四肢：两前肢笔直，且相互平行，前脚强壮。因为胸部比较深，所以前肢会比后肢更长。从地面到肘的高度大约是地面到肩胛上缘高度的55%。四肢太短的犬不理想。</p><br><p>肩部应长而倾斜，约成43°的角度，肩部强壮。两肩脚上缘的距离大概是2.5-3.8 厘米(1-1.5 英寸)。大腿发达，膝关节大概和地面成45度角，跗关节在肩高的下1/3处。</p><br><p>从后面看，犬在自然站立时，两条后肢是相互平行的。直的或牛样的膝关节均不符合标准。(只有当犬在运动状态时才可以辨别膝关节是否为牛样的)。脚大且长，比较平坦，就好似野兔的足，脚趾略微有点分开，不是很紧凑;趾尖呈拱形，脚垫厚而坚硬，脚趾之间长有保护性的毛发。自然站立时，脚既不外展也不内翻，不过要垂直，但是在拉车时，脚是可以稍微往内翻。</p><br><p>缺陷：脚外展，足尖像鸽子一样，脚为圆形或像猫足;脚趾太过分开。</p><br><p>脚上的毛非必需，且母犬比公犬多。</p><br><p>臀：臀部略有倾斜，肌肉丰满，必须延伸到不明显的尾根处。</p><br><p>尾巴：中等长度，如果下垂，尾骨的长度应该能够延伸到飞节处。尾巴上覆盖着长长的毛发，警惕的时候会翻卷到后背或卷向一侧，休息时尾巴会放下。尾根不宜过高或过低，必须活动自如。</p><br><p>缺陷：尾巴有两个卷曲。</p><br><p>尾上翘且高出背部的情况，在比赛时只允许出现一次。</p><br><p>被毛：双层，底毛短而浓密，柔软如棉絮一般，紧贴在皮肤上，外毛是穿透底毛而出的，质地更为粗糙，也更长一些，直立在身体表面，绝对不可卷曲。被毛围绕着颈部和肩部环绕一圈，形成“围脖”(雄性比雌性要多一些)。毛发的质量决定了狗狗能否抵御不同的气候，所以远比数量重要。被毛下垂是不受欢迎的。而且被毛上应该有银光闪烁，光泽良好。雌性的被毛虽然没有雄性的长，但质地相对来说要更为柔软。</p><br><p>颜色：纯白色;白色带很浅的浅棕色、奶酪色;整体为浅棕色。除此之外 ，其他的颜色都属于失格。</p>",
      feedIntroduce:
        "<p>1-3个月是萨摩耶的幼犬时期，每天饲喂4~5次，控制好食量，狗粮要用温水泡软后再饲喂，而且喂食前最好拿手捏捏，感觉下有没有完全泡涨，如果没有，那么可能会导致幼犬消化不良甚至是拉肚子。确定狗粮泡涨之后，如果经济条件允许，可以在狗粮里添加一些有助于发育的营养品，比如发育宝，钙胃能，羊奶粉之类，可增加幼犬的抵抗力，并提供狗狗的身体所需的营养。</p><br><p>3个月大的幼犬：在这个时期可以开始对幼犬进行一些基础的教育，让它养成良好的进食习惯。因为小狗进食的时候，总是喜欢吃一会玩一会，注意力不集中，所以家长们如果看到它进食时忽然停下来跑去玩，那么要立马当着它的面将狗碗拿走，中间无论它怎么乞食都不要给，必须等到下一次喂食的时候再给它吃，这样几次下来，狗狗通常就会变乖变自觉了。</p><br><p>4个月-6个月：这段时期，幼犬的乳齿会开始逐渐脱落，慢慢长出永久齿，换牙时期狗狗的牙齿的根部会有瘙痒感，让狗狗十分难受，它们会乱啃乱咬以缓解这种不适感，此时家长要及时制止它的不良行为，给它买些咬骨、咬胶吃。</p><br><p>狗狗一般每天早晚各大小便一次，幼犬通常会更为频繁，吃了没过多久就要拉，多加注意，选好时机及时训练它大小便。</p><br><p>注意：随着犬只体重的增加，年纪的增加，对于营养的需求量也在不断增加，那么一定要满足它们对钙质的需求，要不然容易患上佝偻病，致使四肢长骨变形或关节肿大等。</p><br><p>8个月之后就可以饲喂成年犬的狗粮了。</p><br><p>在整个生长发育时期，要给狗狗充足而丰富的蛋白质、脂肪、碳水化合物、矿物质及维生素。如粮食、瘦肉、蛋黄、蔬菜、鱼肝油、骨粉等，并一定要定时定量。</p><br><p>每天要有充足的运动时间，但不可运动过量，尤其是在夏天阳光暴晒的地方，运动完后要给萨摩耶犬提供足够干净的饮水，运动后不要马上喂食，至少要安静休息半小时左右再吃饭，以免呕吐。</p><br><p>萨摩耶的毛发蓬松丰厚，需要经常梳理。</p><br><p>工具：柄梳一把。就是头部是椭圆的那种梳子。</p><br><p>方法：从尾部往头部方向梳。左手按住背毛，右手拿着梳子轻梳，梳的方向不是从左往右，而是往右上方用力，且有往上挑的动作，就象我们吹头发的时候，为了将头发吹得蓬松，就是用的这种梳发动作。柄梳的针尖触及皮肤最好，不仅能梳透，还能按摩狗狗的皮肤，当然针尖绝对不可过于尖锐)。</p><br><p>清洗</p><br><p>1、萨摩犬开始洗澡是生下来二个月之后，也就是在接种预防针之后的两周。室外饲养的萨摩犬除了夏天，一般一年洗3-4次，室内饲养的则20天-30天洗一次最好。这主要是由于萨摩犬的皮肤不像人类那样容易出汗，所以无需太过频繁的洗澡。</p><br><p>2、洗澡之前应带它出去散散步，让它排出尿和粪便，然后根据步骤来洗澡。将小萨摩放在36℃~38℃温水里，先挤肛门腺。然后把海绵浸泡在稀释了几十倍的洗发水里，从头部往后将狗狗的全身清洗一遍，最后用清水彻底冲洗干净。注意，别让洗头水进入狗狗的眼睛、鼻子和嘴。</p><br><p>4、哪怕是身体健康的萨摩犬，洗澡时间也尽量安排在中午到傍晚前，洗完了要及时擦干毛发。</p><br><p>4、哪怕是身体健康的萨摩犬，洗澡时间也尽量安排在中午到傍晚前，洗完了要及时擦干毛发。</p><br><p>5、在海边游玩或者淋完雨回来，则是一定要帮萨摩耶犬洗澡的。</p>",
      identifyIntroduce:
        "<p>纯种萨摩耶幼犬的特征</p><br><p>1、毛量：判断是不是纯种，毛质毛量很重要。毛量越多，这样的萨摩越好，同时毛质比毛量更重要。最好的效果是抓上去一把松开，毛立即以喷射状散开复原为最佳(说明纤维质优良)。</p><br><p>2、毛色：纯种身上的颜色应是纯白色或白色加浅黄色，奶油色或淡黄色。</p><br><p>3、骨架：骨架是挑选纯种萨摩的重要因素。狗狗骨架大，日后会长的高大漂亮，所以挑选萨摩时要非常注意狗狗的骨骼，最好可以上手摸摸。还有就是看它的爪子，爪子越大，日后长得越高。</p><br><p>4、头部：纯种的萨摩嘴长占头部40%，眼眶是杏性，眼睛之间距离较开，颜色较深，眼外角指像耳根，同时纯种萨摩的耳尖细圆，耳朵厚实。还有就是萨摩招牌的微笑。</p><br><p>5、体态：纯种萨摩体态优美。挑选时我们可以看看狗狗跑动的样子，步态坚实稳固的，跑起来轻松优美的，充满了灵动感觉的就是好的。它应该四肢较长，后腿发达是萨摩的标志性特征。</p><br><p>6、性格：性格测试也是很重要的。一般来说，性格是由遗传决定的，当然后天也可以训练，但是难度就比较大了。简单来说，比较活泼，不怕人的萨摩会更好一点。</p><br><p>除了上面提到的评判标准，其实血统也很重要，若是有机会看到萨摩宝宝的父母的话，一定不要错过，若父母都是纯种萨摩耶，那么通常他们的幼犬绝对会拥有非常优秀的基因。</p>"
    };
  }
};
</script>

<style scoped>
.samoye-container /deep/ .samoye-main {
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
.samoye-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.samoye-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.samoye-container
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