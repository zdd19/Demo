<template>
  <div>
    <el-container class="hashiqi-container">
      <el-main class="hashiqi-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="hashiqiUrl" height="100%" />
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
                      <span style="color:red">哈士奇犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">哈士奇犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">哈士奇犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">哈士奇犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">哈士奇犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">哈士奇犬</span>
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
import hashiqiImg from "@/assets/img/hashiqi/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      hashiqiUrl: hashiqiImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "哈士奇",
        englighName: "SIBERIAN HUSKY",
        otherName: "西伯利亚雪橇犬",
        area: "俄罗斯西伯利亚地区",
        address: "俄罗斯西伯利亚地区",
        shape: "中型犬",
        use: "家庭犬",
        group: "工作犬",
        height: "51-60cm",
        weight: "16-27kg",
        life: " 12-15年",
        price: "500-5500元",
        style: "无体味,耐寒"
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
          number: 4
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
          number: 2
        },
        {
          id: 6,
          degreeName: "对陌生人程度",
          number: 5
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
          number: 2
        },
        {
          id: 13,
          degreeName: "城市适应性",
          number: 3
        }
      ],
      shapeIntroduce:
        "<p>西伯利亚雪橇犬,英文名: SIBERIAN HUSKY,别名: 哈士奇,是一种原始的古老犬种，主要生活在西伯利亚东北部、格陵兰南部。哈士奇名字的是来源于它独特的嘶哑的叫声。</p><br><p>哈士奇性格多变，有的非常的胆小，有的有非常的暴力，不过现在融入大陆和家庭的哈士奇，均已磨灭了它的野性，变得比较温顺，是一种流行于全球的宠物犬。</p><br><p>友好、温柔、警觉，聪明，温顺，热情并喜欢交往。它不会呈现出护卫犬那种强烈的领地占有欲，也不会对陌生人产生过多的怀疑，对别的犬类也不会有攻击性。成年犬应该具备一定程度的谨慎和威严。</p>",
      originIntroduce:
        "<p>哈士奇起源于18世纪初，从那时候起，阿拉斯加的美国人开始知道哈士奇雪橇犬。</p><br><p>传说中，西伯利亚雪橇犬是哈士奇的祖先，关于其来源最早要追溯到新石器时代之前。当时一群中亚的猎人们移居到了西伯利亚生活，经过了长久的时间，这群跟随在猎人身边的狗儿在与北极狼群交配、繁育后，后代逐渐发展成为北方特有的犬种，其中包括哈士奇、萨摩耶、阿拉斯加雪橇犬等。</p><br><p>在西伯利亚东北部的原始部落---楚克奇族，该族群的族人用这种外型酷似狼的哈士奇犬作为最原始的交通工具来拉雪橇，并用哈士奇犬猎取、驯鹿，或者繁殖后带出他们居住的冻土地换取温饱。因为哈士奇体型小巧、结构结实，而且胃口小、无体臭，也能够承受寒冷的气候，非常适应极地的气候环境，因此成为楚克奇人的重要财产。</p><br><p>哈士奇(西伯利亚雪橇犬)是东西伯利亚游牧民族--伊奴特乔克治族，饲养的犬种，一向担任拉雪橇、引导驯鹿、守卫等工作。哈士奇(西伯利亚雪橇犬)数世纪以来，一直单独的生活在西伯利亚地区。在20世纪初期，被毛皮商人带到了美国。之后哈士奇犬便成为举世闻名的拉雪橇竞赛的冠军犬。</p><br><p>最新的DNA分析确认了该犬属于最古老的犬种之一。据说是一群来自阿纳德尔河(Anadyr)及其周边地区的狗在1908年-1928年间的淘金热时期，被陆续引进到阿拉斯加地区，作为雪橇犬使用。西伯利亚雪撬犬比当时用来运输货物的100~200磅(45~54kg)重的狗体型更小、速度更快，也更能忍受恶劣的环境。</p><br><p>几个星期大的西伯利亚雪撬犬，一位曾经是渔民的挪威金矿工，首次接触到西伯利亚雪撬犬是在他请求他的雇主训练一些小狗来参加1914年的AAS大赛的时候。在经历了第一年的失败后，Seppala随后统治了这项竞赛。到了1925年，他是用狗拉雪橇从Nenana向被白喉侵袭的诺姆运输抗毒血清的1925诺姆血清运送里的关键人物。Iditarod Trail Sled Dog Race这项竞赛就是为了纪念这一次著名的运输而举办的。隔年，两队Seppala的狗在美国进行了巡回展出，在全国尤其是美国东北部的新英格兰地区，激起了人们对雪橇犬和狗拉雪橇竞赛的强烈兴趣。1930年，因为苏联政府关闭了西伯利亚地区的边境禁止对外贸易，最后一批西伯利亚雪撬犬也在同年被出口到了别的国家，而且也是在这一年西伯利亚雪橇犬被美国犬业俱乐部(AKC)正式承认。1939年，西伯利亚雪橇犬在加拿大正式注册。今天在北美洲注册的西伯利亚雪橇犬大部分均是1930年从西伯利亚进口和Leonhard Seppala的狗的后代。</p>",
      fitIntroduce:
        "<p>城乡都可以，最好是空间宽敞，住在郊区更好，或者有一个带围栏的院子.也适合居住在小区但空地较多的饲养者。</p><br><p>该犬害怕孤单，需要有人陪伴，而且精力旺盛，运动量大，所以不适合老年人和空余时间不多的上班族、学生饲养。</p>",
      measureIntroduce:
        "<p>哈士奇大小中等，脚步轻快，动作优美。该犬结构紧凑，皮毛良好，竖耳，尾巴像毛刷一般，这些特征都显示出它的北方气息。步态平稳而轻松。这种犬通过戴上绳索来完成自己的使命，能够用合适的速度来长距离的运输重量轻的物品。它的身体比例和体形都很好的展示出它在力量、速度、耐力方面的平衡性。</p><br><p>雄性更具刚性，但不粗糙;雌性则更具柔性，但不显虚弱。在条件正常的情况下，它的肌肉结实且发育良好的话是不会超重的。</p><br><p>重要比例：从侧面看，其从肩顶到臀后顶的长度要稍微比地面到马肩隆顶部的高度长。而鼻尖到止部的距离则和止部到枕骨的距离相等。</p><br><p>头：颅骨中等大小，和整体比例协调;顶部稍圆，从最宽的地方往眼睛的方向逐渐变细。鼻镜：灰色、棕褐色或黑色犬的鼻镜为黑色;而古铜色犬为肝色;纯白色犬的鼻镜颜色或许会稍显鲜艳。嘴唇着色均匀，闭合紧密。</p><br><p>眼睛：呈杏仁状，两眼之间的距离中等，略倾斜。棕色或蓝色。</p><br><p>耳：呈三角形，毛发浓密，大小中等，一般直立，耳朵厚，覆盖着厚厚的毛，尖部略圆，笔直地指向上方。</p><br><p>颌/牙：牙齿剪状咬合</p><br><p>颈、躯体：颈：长度适中、拱形，犬站立时，直立昂起。小跑时颈部伸展，头略微向前伸。胸：深，强壮，但是不太宽，正好位于肘部的后面，并且与其水平。肋骨从脊椎向外充分扩张，但是侧面扁平，以便自由活动。腰部：收紧，倾斜，比胸腔窄，轻微折起。</p><br><p>背：背直而强壮，从马肩隆到臀部的背线平直。中等长度，不可由于身体过于欣长而变得圆拱或松弛。</p><br><p>四肢：肩胛骨往后收。从肩点到肘部，上臂略呈一个向后的角度，不可与地面呈垂直的角度。肩部和胸腔间的肌肉和韧带都非常的发达。前腿：站立的时候，从前面观察，腿之间的距离恰好，平行而笔直，肘部接近身体，不向内翻，也不向外翻。从侧面观察，骨交节有一定的倾斜角度，脚部强壮而灵活。骨骼结实有力，不过不会显得沉重。从肘部到地面的距离略大于肘部到马肩隆顶部的长度。前腿的上爪是允许去除的。足爪呈椭圆形，不长，中等大小，紧密，脚趾和肉垫间有丰富的毛。肉垫紧密而厚实。当犬自然站立时，脚爪不能外翻或内翻。缺陷：肩部笔直而松弛。骨交节无力;骨骼太笨重;从前面看两腿分得太宽或太窄;肘部外翻。八字脚或脚趾无力;脚爪太大、笨拙;脚爪太小、纤细;脚趾内翻或外翻。</p><br><p>后半身：站立的时候从后方观察，两条后腿的距离中等，彼此平行。大腿上半部分肌肉发达，强壮有力，膝关节充分弯曲，踝关节轮廓分明，距离地面的位置较低。若有狼爪，可以去除。缺陷：膝关节笔直，后部太窄或太宽。</p><br><p>臀：臀部以一定的角度从脊椎处下溜，不过角度不宜太陡，免得影响到后腿的驱动力</p><br><p>尾巴：尾巴上的毛很丰富，有着类似于狐狸尾巴的外形，通常呈向上的镰刀状，位置刚好处于背线之下，犬在正常站立的时候，尾巴一般是呈自然下垂的状态。而尾巴在举起的时候一般是不会翻卷到身体的任何一侧，也不会平放在背上。正常情况下，在回答时犬会摇动尾巴。缺陷：尾巴平放或紧紧地卷着;尾根的位置太高或太低。</p><br><p>被毛：双层，中等长度，看上去毛很浓密，不过不宜太长以致掩盖了犬本来清晰的轮廓。底毛柔软且浓密，长度足以支撑起外层被毛，从而不显服帖。外层粗毛平直，光滑，不粗糙，不能直立。</p><br><p>应该指出的是，处于换毛期的犬无下层被毛是正常的。可以修剪胡须、脚趾间和脚周围的毛，这样外表看起来会更加的整洁。不允许修剪除此之外的部位，否则要受到严厉惩罚。</p><br><p>缺陷：被毛太长，过于粗糙，毛发杂乱而蓬松;质地太粗糙或太柔滑;修剪了除上述被允许的部位以外区域的被毛。</p><br><p>颜色：从黑到纯白、棕到红的所有颜色均可接受。头部上有一些其他色斑是常见的，包括许多别的品种没出现过的图案。</p>",
      feedIntroduce:
        "<p>对于哈士奇幼犬而言，适量的钙质补充是必须的，因为这样才可以让幼犬更加健壮，经济条件允许的话，可以购买宠物专用的超能钙鲨鱼软骨粉，每天3-5g;也可以在药店购买人用的“葡萄糖酸钙口服液”，每天早上和晚上各半支。另外,要注意的是，幼犬在四个月左右开始换牙，在此期间一定要停止补钙，不然的话非常容易让幼犬长出双排牙。</p><br><p>幼犬发育的不同阶段，它身体各个部位的生长能力是不平衡的。在出生后的前3个月，主要是增长躯体、增加体重的，从第4个月开始到6个月，主要是生长体长，7个月之后则主要长体高，这就要根据犬体不同发育阶段所需要的营养物质来确定饲喂的饲料种类和数量。从幼犬不需要母犬而进入独立生活之后，在它的整个生长发育时期，都需要供给充足而丰富的蛋白质、脂肪、碳水化合物、矿物质、维生素。如粮食、瘦肉、牛奶、蛋、蔬菜、鱼干油、骨粉等，而且喂饲要保证定时定量。</p><br><p>2-3月龄的幼犬，每天喂4~5次，每只幼犬日量标准是瘦肉200克，奶300克，蛋1个，大米250~500克，蔬菜250~300克，食盐3~5克，并适量补充一点维生素、矿物质、钙粉等。若经济条件可以的话，给幼犬一些猪、牛的软骨吃，记住不要喂鸡骨头。8个月之后，就可根据成年犬的饲料的日粮标准饲喂了。</p><br><p>喂食用具</p><br><p>厚厚的陶瓷盆作为食盆一般不易被狗打破。若是给狗煮肉食，可以任用一种长柄有盖的锅，不过从卫生方面来看，最好是把煮狗食的用具和你厨房中的其他厨具分开使用。当然每餐之后一定要洗干净所有的碗和餐具，并将剩余的罐头食品盖上塑胶盖存放起来。和人一样，最多放在冰箱里存放三天，之后吃不完的就应丢掉，因为这个时候食物里面已经产生了大量肉眼看不见的细菌。</p><br><p>哈士奇的肠胃功能比较独特，对于蛋白质和脂肪的要求比较高，因此建议饲喂幼犬粮到18个月龄之后，再改喂成犬狗粮。日常可适当补充些鱼类或者牛羊肉类来促进发育。此外，它对钙的要求也比较高，所以每个星期几次钙片或钙粉对于哈士奇是十分有必要的。关于狗粮的品牌最好视狗而定，尽量找一些蛋白质和脂肪含量高的优质狗粮。若经济不允许，可适当的在狗粮里添加一些牛羊猪鸡肉或海鱼等来补充一些蛋白质。</p><br><p>哈士奇基本饲养要点</p><br><p>一条合格的哈士奇一定有着一身独特的毛层来抵挡恶劣的环境。哈士奇有双层被毛，分为外毛和绒毛，其中外毛还能分成2段，一般可以看到顶端的深色发亮，低端毛质粗而相对淡色。在它顶端发亮的毛叫银尖，是用来抵挡紫外光和太阳光造成的热量;而粗壮的毛根紧紧的生长在皮肤内，因此通常哈士奇的外毛我非常不容易掉毛的。哈士奇的内毛和外毛的比例通常为8：1，而这些丰厚的内毛还会分泌出一种油脂用以防水，而且也正是有了这种油脂，才恰到好处的营造了一个非常科学的隔热层，用来抵挡外界的气候。</p><br><p>它的毛发对其非常重要，所以要尽可能的保证哈士奇生活在干燥的环境里，洗澡之后尽可能的用风筒吹干。若是由于患皮肤病而引起大量掉毛，哈士奇将不得不忍受炎热和寒冷的痛苦，情况严重的话，紫外线的直射就能致使其患上皮肤癌。</p><br><p>哈士奇的在拉雪橇比赛中，拼得是速度而不是力量，因此平时的体能训练最主要的就是速度，每天速跑和慢跑几次是很必要的，在整个运动的过程中，前后肢尽量的伸展将大大的帮助到哈士奇形体的发展，每天运动3次以上，每次20-30分钟最好。</p>",
      identifyIntroduce:
        "<p>1、双耳双眼。要注意小狗是否双耳灵活，耳道清洁而无异味，耳朵则以粉红色为健康;眼睛要干净，无任何异物或排泄物。</p><br><p>2、足垫。有柔软、不干裂的足垫，才是一条健康小狗所必备的。</p><br><p>3、皮肤。要柔软而有弹性，不能硬结、肥厚，要注意皮肤是否有虱子或螨虫等寄生虫。看小哈士奇是否有皮肤病很简单，重点观察它是否连续多次挠抓一个地方，这个部位如有红斑，则为有问题。</p><br><p>4、小狗尾部下方。如果这里有一些黄色的印子，就说明小狗有过腹泻或下痢的迹象，不宜购买。</p><br><p>5、在性格上，如果是想购买小狗，千万不要选取太文静的，因为小狗天性活泼，过分文静肯定有问题。</p>"
    };
  }
};
</script>

<style scoped>
.hashiqi-container /deep/ .hashiqi-main {
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
.hashiqi-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.hashiqi-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.hashiqi-container
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