<template>
  <div>
    <el-container class="demu-container">
      <el-main class="demu-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="demuUrl" height="100%" />
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
                      <span style="color:red">德国牧羊犬犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">德国牧羊犬犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">德国牧羊犬犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">德国牧羊犬犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">德国牧羊犬犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">德国牧羊犬犬</span>
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
import demuImg from "@/assets/img/demu/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      demuUrl: demuImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "德国牧羊犬",
        englighName: "German Shepherd Dog",
        otherName: "德国黑背（贝）、德国狼犬、德国狼狗	",
        area: "德国",
        address: "德国",
        shape: "大型犬",
        use: "伴侣犬,牧羊犬,缉毒犬,军犬,导盲犬",
        group: "牧羊犬",
        height: "55-56cm",
        weight: "34-43kg",
        life: "12-13年",
        price: "5000-50000元",
        style: "易打理,易训练,耐寒"
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
          number: 3
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
          number: 3
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
          number: 4
        },
        {
          id: 13,
          degreeName: "城市适应性",
          number: 5
        }
      ],
      shapeIntroduce:
        "<p>德国牧羊犬,其实也就是大家通常所说的狼狗，该犬种原产地是德国，而关于其来源唯一可以确认的是，它在1880年就已经在德国各地稳定发展了，且普遍用途为牧羊犬。</p><br><p>它们动作敏捷，而且适应动作式的工作环境，因此经常被安排各种任务。后来在第一次世界大战期间更是被德军募集作为军犬，与军队一起征战战场。经过德国军队对其进行取长补短的培育后，基本上已经定型了。</p><br><p>由于它高大威猛的体型，已经工作能力极强，所以在全世界范围内主要用于军犬、警犬、搜救犬、导盲犬、牧羊犬、观赏犬，还有家养宠物犬等多重身份。</p>",
      originIntroduce:
        "<p>1999年4月，德国牧羊犬迎来了它的“百岁诞辰”。德国各地的牧羊犬协会以及养犬爱好者们都通过不同形式的活动来庆祝、纪念“世界犬中之王”诞生一百年。</p><br><p>1890年，德国育犬家----史蒂芬尼斯与马艾尔先生开始对德国古老的牧羊犬——艾尔沙奇亚犬进行改良繁育。军人出身的冯斯蒂法尼茨当时是希望能够培育一种既不会咄咄逼人，但是又不至于胆怯的犬。他先是在自己的桌子上描绘出了他心目中的牧羊犬，然后再用多种优良的犬种进行一一配种，一直到得到了符合他想法的理想原型才作罢。</p><br><p>1902年4月17日，德国牧羊犬正式诞生于德国西部的卡尔斯鲁厄。同年，在一个犬展览会上，冯斯蒂法尼茨第一次向人们展示了他经过无数次的配种试验、精心培育出来的优良犬种。于是德国牧羊犬在当时成为了非常受人们欢迎的最优秀的军犬、警犬和牧羊犬，很多国家都引进它用来协助军队、警队搜查毒品、缉捕逃犯、边防巡逻等。</p><br><p>第一次世界大战之后，大量的德国牧羊犬被引进英国，之后很快又被输送到了世界各地。而德国牧羊犬也因此成为分布最广，最受欢迎的犬类品种之一。不过要说最钟爱牧羊犬的还是当属德国人，在德国境内大概就有差不多50万只德国牧羊犬，而且90%都是由家庭饲养的，这些犬成为居民的好伙伴和守卫者;剩余的10%由警署、海关、救援组织等机构驯养。</p><br><p>其实，这种风光的犬种也有一段不光彩的历史。在一战期间，德国牧羊犬被派往前线作战;而二战期间，希特勒曾经就命令他的军队招募到20万只牧羊犬，让这些经过严格训练的德国牧羊犬成为护送炸药的牺牲品和纳粹集中营的看门犬。再后来，在柏林墙筑起之后，还成为东西德边境的守卫者。</p><br><p>直到二战结束之后的和平年代，德国牧羊犬的境遇有了很大的改善，甚至成为了影视明星，在不少电视系列片中都担任着重要的角色，深受人们喜爱，尤其是青少年。比如电视系列片《雷克斯警官》，德国牧羊犬在里面就有非常出色的表演。该片被翻译成了26种语言，在世界各地放映，被广泛的传播开来，德国牧羊犬也因此声名远播。</p>",
      fitIntroduce:
        "<p>德国牧羊犬工作能力超强，很适合训练来作为防爆、搜集、护卫犬。因为它的体型较大，对陌生人很警惕和怀疑，有很强的守护意识，所以一般不适合在空间狭小的公寓饲养。</p><br><p>最好居住的地方是没有限制养大型犬的城市边缘，或别墅区，有比较好的活动空间和不容易对别人造成干扰的地方。</p>",
      measureIntroduce:
        "<p>整体：头部大小适中，不过绝对不是越大越好。头部的长度大概为体高的40%最好，而额部的宽度和头部长度的比例为1:2，不适合过长或者过细。鼻颈部和额头部长度相等，眼在中间，高于鼻颈部，也就是从侧面观察，眼睛的上方要高于鼻颈的部分，犬的上下颌健壮有力。</p><br><p>缺陷：前额与鼻颈处平直。</p><br><p>体形适中，略有延展性;身躯强壮，有强壮发达的肌肉和强壮的骨骼;整体紧凑而和谐。体长略大于身高，超出幅度在10%—17%。身躯很深，身体轮廓的平滑曲线要胜于角度。身躯坚固而非细长，不论在休息时还是在运动中，给人的印象都是肌肉发达、敏捷，既不显得笨拙，也不显得软弱。</p><br><p>理想的德国牧羊犬给人的印象是有良好的素质，和言语无法表达出来的高贵感。性别特征非常明显，雄性显得雄壮，雌性则稍显柔美。</p><br><p>头：头部应宽大，与整体比例要协调，头的长度应该占体高的约40%。不过头型不能显得粗笨，或轮廓不清或过长。头部皮肤从整体外观上来看，一定要是干净整洁而富有弹性的，不可以有皱折和松懈的情况。两耳的间距适中，从双耳到鼻尖部的头盖骨曲线要平滑，且头盖骨和口鼻部之间有明显的界限。额头的上下部都要是发育良好的。口鼻部挺直，嘴唇必须紧而有弹性，有良好的褶皱，颜色为黑色。</p><br><p>眼睛：大小适中、圆圆的眼睛，略有突出、颜色是衡量眼睛的一个重要指标，最好的是暗黑色，跟着是上暗色。总而言之眼睛的颜色越重越好。</p><br><p>耳：两耳大小适中，直立。从正面看，鼻颈的宽度和两耳基部的距离相等。</p><br><p>缺陷：耳朵内倾、外斜。</p><br><p>颌/牙：牧羊犬全部牙齿有42颗。上牙20颗，下牙22颗，呈剪状咬合，咬合力非常大。上下颌的比例刚好。</p><br><p>缺陷：上颌或下颌过长，或过短，也就是人们常说的被盖咬合与反咬合，先天缺齿为严重缺陷，对于狼犬的头部毛色没有具体的规定的，不过鼻的前端与下颌吻部一定得是黑色的，否则即为严重缺点。而口腔内软组织的部分，也就是我们常说的腮皮，颜色深为好。</p><br><p>颈、躯体：牧羊犬的颈部必须强壮，且肌肉组织良好，尤其是咽喉部，应该没有多余和松懈的皮肤。颈部与躯干的夹角为45度。腰部要宽，发育要好，同样要有很好的肌肉组织。胸部宽、圆的程度要合适，不但长，轮廓也应清晰。胸的纵深长度最好是占总高度的45%。肋部弯曲合适，过分浑圆和平瘪都将视为缺陷。</p><br><p>背：背线平滑。背部结实，强而有力，有很好的肌肉组织。</p><br><p>四肢：前腿，不管从哪个方向看，都必须是相当的笔直的，而从正面看的时候，两腿之间还必须保持平衡。肩胛和上臂长度相等，有发育完好的肌肉组织，并且跟身体之间通过紧密的骨骼完美的结合。肩胛骨与上臂的理想夹角应为90度，不过一般情况下110度左右的夹角也是能接受的。双肘得和身体连接紧密，保持站立和活动的距离。长度必须是前腿长度的1/3，它与前腿的夹角大约为20度—22度。更严格点来说，就是既不能太直，又不能夹角不在20度—22度的范围，以免让耐久力大打折扣。</p><br><p>圆形的足爪，脚趾紧凑，呈半圆的拱型，丰厚的脚垫非常耐磨，表皮脆嫩一般视为缺陷。犬的趾甲为黑色的，既短也粗，显得很有力量。</p><br><p>后腿骨的位置可以延伸到背部，从后面看，两侧的后腿骨应该是平衡的，上、下大腿骨的长度几乎一样，而两骨的夹角大约在120度。大腿必须强壮有力，有非常好的肌肉组织，爪关节必须强健、坚固，位于其后爪的垂直线上。</p><br><p>臀：臀部必须长，略微向下倾斜，跟水平夹角为23度，特别是顶部要平滑，不能有任何的凹凸，并跟尾部起点形成自然的过度。</p><br><p>尾巴：尾巴下部要覆盖着浓密的毛，长度至少可达到爪关节，不过最佳的长度是达到爪骨的中间。当尾巴处于静止时，有轻微的弯曲，好似一把军刀。当尾巴抬起摆动的时候，弯曲度则会更大。</p><br><p>被毛：标准体毛类型分为表层体毛和下层体毛。表层体毛必须浓密，直硬，密布在外。且头部、耳部、爪部、腿部的毛发必须长且浓密。后腿的毛可以形成一个类似“裤子”的富毛区。</p><br><p>颜色：德国牧羊犬毛发的基本颜色应该是黑色，并伴有云状的黑毛，同时其背部和面部也均为黑色。再有，牧羊犬的胸肋部可以是白色，但这种颜色是不甚理想的。犬的鼻毛必须完全是黑色，面部的黑毛过少，眼部周围的黑毛过少，以及指甲和尾巴尖呈浅色或白色都应视为缺乏色素沉着。牧羊犬的下层体毛应为浅灰色。白色是不被允许的。</p>",
      feedIntroduce:
        "<p>德国牧羊犬应该从幼犬开始，就多和它相处，因为孤独会让幼犬感觉不习惯从而大声吠叫，在开始的时候就多和它玩耍，培养与主人之间的感情，让它尽快的适应新环境，也为日后和主人沟通打好基础。</p><br><p>德国牧羊犬成长发育得很快，饮食和营养十分关键，由于幼犬的器官没有完全的成熟，没办法吸收过量的食物，而吃撑了又易引发肠炎方面的问题，因此饲养幼狼犬的饲料越精致越好，且最好少吃多餐，好让它慢慢吸收，同时要注意给幼犬充足休息和睡眠时间。</p><br><p>饲养德国牧羊犬的地方，最好是在室外的院里，专门卫它建造一个大约1.5米乘以1米的狗屋，它的体型较大，必须多些空间活动。在笼顶要记得安装防风板，地面则铺上木版，四面不要密封，以保持通风和干燥，避免患皮肤病。此外每天要给犬适量的运动，要带它出外散步或跑步一小时左右，别长久的留在屋里，会影响它的骨骼发育和成长。</p><br><p>幼犬饲养</p><br><p>蛋白质、脂肪、碳水化合物、矿物质、维生素等营养是维持德国牧羊犬生长发育等生命活动所必需的物质。</p><br><p>1.正在哺乳的德国牧羊犬的仔犬，在晚秋、冬季、早春要注意保温，室内保持干燥，使用红外烘烤灯等。产房周围环境应尽量保持清静，也要时刻查看避免仔犬被母犬挤压而死。再者要及时对仔犬补奶，抓好吃其他事物的时机，并逐渐断奶。</p><br><p>2.2-3月龄的德国牧羊犬幼犬需耐心细致地管理，这跟幼犬的体质发育关系极大，对神经系统的正常发育也有直接影响。适当地带犬运动锻炼，对强健骨骼、肌肉组织，改善内脏器官机能，促进新陈代谢，适应不同气候、环境条件等均有良好作用。</p><br><p>3.免疫接种和预防性驱虫，是保证犬健康成长的关键。适宜的免疫程序为45天时第一次免疫，以10天间隔再连续免疫2次，3月龄时注射狂犬疫苗，幼犬每月驱虫1次。德国牧羊犬的幼犬的培育宜在2-6月龄时进行，要求达到体质健壮，发育正常，四肢有力，跑跳迅速自如。</p><br><p>喂养德国牧羊犬应注意事项</p><br><p>1.罐装食品</p><br><p>多汁、肉质松软的罐装食品，口味多且有嚼劲，可以促进犬的食欲。可是这类食物高蛋白含量，一般在与干燥的狗粮混和后，热卡和碳水化合物的摄入会增高。另外开封后一段时间不容易保鲜。</p><br><p>2.干肉饼</p><br><p>松脆的干肉饼添加在罐装食品中搭配喂食，不但有咬劲，还增加了纤维质、脂肪，也加强了腭部运动。</p><br><p>3.干燥的狗粮</p><br><p>完全干燥的狗粮营养平衡，且利于大量储存。因为它含有4倍于罐装食品的热卡，所以在喂食的时候，每次的分量要注意不可太大。</p><br><p>4.半生食品</p><br><p>这种食品是类似于奶酪的食品，热卡量是罐装食品的3倍。不过含有很多的碳水化合物，不适合有糖尿病的犬吃。与干燥狗粮一样，放在外面一天也不会散失味道，可以少量喂给馋嘴和年老的犬只，当然具体要依据它们的运动量来添加。</p><br><p>5.咬胶</p><br><p>这是一种用牛骨粉压缩后制成的骨状胶质物。犬需要经常磨牙，若是胶太小容易被其一口吞下，而鸡骨类又细又脆的则容易伤到口腔和肠胃，大的牛骨吧又太硬，可能会导致牙齿折断，因此总体来说，咬胶是一种非常适用的食品。</p>",
      identifyIntroduce:
        "<p>德国牧羊犬的选购时期，应在幼犬生后90天最为合适。因为德国牧羊犬出生后90天，其体型已发育到和成年犬差不多，已不再会有大的变化了，所以一般都应在犬出生后90天去选定和预购。</p><br><p>被选中的犬，应该是身体健康、活泼兴奋、天真大方、食欲旺盛、无眼屎、不消瘦、鼻垫湿润而凉快，被毛紧贴身、光泽柔顺、两眼有神、生气勃勃、行动灵敏自如的幼犬。</p>"
    };
  }
};
</script>

<style scoped>
.demu-container /deep/ .demu-main {
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
.demu-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.demu-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.demu-container
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