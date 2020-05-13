<template>
  <div>
    <el-container class="jinmao-container">
      <el-main class="jinmao-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="jinmaoUrl" height="100%" />
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
                      <span style="color:red">金毛犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">金毛犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">金毛犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">金毛犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">金毛犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">金毛犬</span>
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
import jinmaoImg from "@/assets/img/jinmao/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      jinmaoUrl: jinmaoImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "金毛",
        englighName: "Golden Retriever",
        otherName: "金毛寻回猎犬、黄金猎犬",
        area: "英国",
        address: "英国",
        shape: "大型犬",
        use: "伴侣犬,家庭犬,缉毒犬,导盲犬",
        group: "家庭伴侣犬，工作犬",
        height: " 55-61cm",
        weight: " 27-34kg",
        life: " 10-12年",
        price: "200-4000元",
        style: "友善,易训练,耐寒"
      },
      degreeMsg: [
        {
          id: 0,
          degreeName: "黏人程度",
          number: 1
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
          number: 5
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
          number: 3
        },
        {
          id: 13,
          degreeName: "城市适应性",
          number: 4
        }
      ],
      shapeIntroduce:
        "<p>金毛犬，属于匀称有力、性格活泼的一个犬种，特征是结构稳固、身体各个部位的比例合理而协调，腿既不太长也会显得笨拙，表情友善，热情、机警、自信，而且不怕生。</p><br><p>金毛犬最早是一种寻回猎犬。如今大部分作为导盲犬与宠物狗饲养。金毛犬在犬类智商排行榜上排名第四。对小孩子或者婴儿非常友善。</p><br><p>友善、可靠、值得信赖。在自然境况下，对别的犬或人表现出好斗或敌意：若是没有缘由的胆怯、神经紧张，那么是与金毛的特质相违背的，根据这种情况的严重程度在竞赛是会受到惩罚的。</p>",
      originIntroduce:
        "<p>金毛寻回犬在18世纪由英国苏格兰的Lord Twadmouth于苏格兰河近郊Inverness开始繁殖，主要被用于狩猎还有巡回被猎枪射落的水鸟。原来的品种是由不知名的黄色寻回犬(A yellow retriever puppy of unknown breed )和苏格兰长耳獚(Tweed water spaniel ) 交配得来的。</p><br><p>金毛寻回犬非常擅长游泳，不管在任何气候下都能将猎物从水中叨回给主人，同样还是人类最忠实、友善的家庭犬和导盲犬。</p><br><p>其实关于金毛寻回猎犬的确定来源时间是存在争议的，而后期经过改良得来的品种基本上可以认为是在19世纪后期。它最初的名字是苏俄追踪犬，后来加入佛乐寻猎物犬种、寻血猎犬种、水猎鹬犬种的基因。最终配种的结果才产生了这种天生具备猎物取回能力、善于追踪以及敏锐嗅觉的犬种。</p><br><p>苏格兰金毛寻回犬的历史可追溯到 1865 年，那时的苏格兰流行打猎，所以擅于捕猎野生动物的中型犬种就非常受到狩猎家庭的欢迎，在当时就有一只毛长耳垂的浅猪肝色的拉布水猎犬经常在当地出没，不过如今这种犬种早已绝迹了。后来苏格兰有一位名叫 Lord Tweedmouth的贵族，就尝试用黄色的拉布拉多寻回犬(Labrador Retriever)和现在已绝种的拉布水猎犬混合繁殖，经过多次的品种改良，然后逐渐的发展成如今众所周知的金毛寻回犬了。</p><br><p>直到19世纪，金毛寻回犬已经在英国流行很长时间了，名声大噪，遍及英伦各地，知名度不断的得到提高，广受英国人的欢迎，在 1903 年第一只金毛寻回犬在英国狗会正式登记，1911年成立了英国金毛寻回犬会。</p><br><p>后来一些到英国旅游的游客，更是将金毛寻回犬带到了美国和加拿大等地，作为打猎的用途，直到 1925 年 11 月，金毛寻回犬在 AKC 注册，不过那个时候只是作为寻回犬被承认而已。直到 1927 年，加拿大 Kennel Club 率先承认金毛寻回犬为独立犬种，然后在 1932 年，akc也成立了金毛寻回犬会(Grca)，到现在注册的会员已多达五千名。五十年后，金毛寻回犬更获得akc犬只服从比赛中连续三届的冠军，而在 2001 年金毛寻回犬被 AKC 选为十大最受欢迎注册犬种之一，排在它前面的是拉布拉多猎犬。</p>",
      fitIntroduce:
        "<p>金毛寻回犬，爱玩、温和、贴心，在狗类中世界智商排名第四，由于喜欢得到称赞，因此学指令学得快，也表现的很听话，喜欢做个乖巧的宠物，那么自然的它会为了得到主人的称赞而非常的听话，足见其天性是非常喜欢撒娇的、喜欢人群的，是最好的家庭伴侣犬之一。</p><br><p>金毛寻回猎犬的体格健壮，对工作热情度高，可以用来捕捉水鸟，不管在什么样的气候条件下都可以在水中游泳，因此深受猎手的喜爱。不过现在主要被作为家犬饲养，为大型犬。</p>",
      measureIntroduce:
        "<p>头：眉头分明，宽阔的头盖和鼻口相连。鼻子为黑色或棕黑色，寒冷的气候或许会导致颜色变浅。两眼之间的距离较宽。</p><br><p>眼睛：是暗褐色，黑且明亮。双眼之间的间距大，有适当的凹陷，大小中等</p><br><p>耳：短，前缘较靠后、在眼睛正上方的地方，下垂着，与面颊紧贴。</p><br><p>颌/牙：颌结实，呈剪状咬合，即上齿紧叩下齿，和下颌呈四方形。口吻结实，宽而且深。</p><br><p>颈、躯体：颈部中等长度，强健、肌肉发达。咽喉部的皮肤不可过分松弛、下垂。</p><br><p>胸深。双腿间的胸宽至少等于一个成年男人合拢的手的宽度(包括拇指)，前胸发达。胸骨可延伸到肘部的位置。肋骨欣长、弯曲度恰当，但非桶形胸，扩展良好，可延伸到后躯。腰短而强健，宽而且深，从侧面观察，腰部略有收缩。侧面看起来，平坦、窄胸、胸深度不足、腰部收缩过度均为缺陷。</p><br><p>背：背部强壮，背线从马肩隆到略倾斜的臀部，不管是在静止或是运动的状态都始终保持水平状态。</p><br><p>下倾、拱形、下凹的背部属于缺陷。</p><br><p>四肢：前躯：强健，和后躯协调良好，动作自如。肩胛长、充分后靠，尖端在马肩隆处紧靠。上臂与肩胛长度差不多相同;肘部后端在肩胛尖端的正下方，紧贴肋骨，没有松懈。从前面看，腿直而骨量充足，但不能显得粗壮。掌部短而强健，略倾，不会有支撑不稳的情况。肘部结合紧密。从后面看飞节自然放松、伸直，既不外翻也不内弯。牛状飞节很不合需要。伪趾可以切除，但是一般是保留的。</p><br><p>足爪中等大小，圆且紧凑，指节良好，脚垫厚实，若毛发过度长，应修剪至显出自然的尺寸和轮廓线。</p><br><p>后躯：宽阔，肌肉非常发达。从侧面看，臀部略下斜;骨盆斜角略大，和水平方向约呈30度角。自然的状态下站立，大腿骨和骨盆之间约呈直角;膝关节充分弯曲;踵关节和地面充分贴近，跖骨短而强壮。足类与前足类似。从后面观察，腿部笔直。踵内翻、踵外翻、踵伸不直，均为缺陷。</p><br><p>臀：平坦或过于陡峭的臀部均为缺陷。</p><br><p>尾巴：尾根高，尾底部厚、肌肉发达，自然地在臀部的延长线上，尾骨延伸至(但不低于踵关节)。尾巴欢快地扬起，呈水平或适度上扬的角度;不过不可以翻卷到背上或夹在腿间。</p><p>被毛：浓密，底层被毛非常有防水性。外层被毛粗硬但富有弹性，质地既不粗糙也不过分柔软，紧贴身体;毛发直或波状。最好不修剪，呈现自然的环状领，前腿后部和身体下有适度的羽状饰毛;颈前部、大腿后部和尾底侧有丰厚的羽状饰毛。头、足、腿前部的毛发短而均匀。</p><br><p>过长、开叉的毛和过分柔软的毛是十分不理想的。足部允许修剪，散发可以整理，不过自然的毛发外形和轮廓不应被修剪破坏，此外建议毛发要经常梳理保持干净，不然十分容易乱成一团。</p>",
      feedIntroduce:
        "<p>金毛犬饮食要注意的小细节</p><br><p>好血统的金毛，饲养上我们一般以减缓它的生长速度为原则,以便促进小狗的骨架健康的生长。不少的人都错误的认为小狗长得胖就显得健康,要知道对于金毛这样的中大型犬而言,过度的肥胖会导致犬在幼年期骨架变形，这样会引起犬髋关节出现问题，据统计大部分的金毛均有这样的毛病。</p><br><p>为了避免这样的问题，要为小狗提供足够的营养，不过注意蛋白质不宜摄取过量，最好严格控制小狗的食量，让它迟到7分饱就行了。饮水方面也要注意，不能过多，若水喝得太多，会导致小狗的肌肉松弛，那么看起来会显得有承重感。不妨多带小狗出去活动，并加强锻炼，不过别激烈运动即可。</p><br><p>关于金毛的补钙问题，通常狗粮中所含的钙质就足够金毛成长发育所需的，所以是不需要再额外补钙的，这一点非常重要，若补钙过度会导致关节僵硬，跑动的时候就会丧失灵活性!</p><br><p>肉及肉类副产品中的蛋白质具有较高的营养价值，所有肉类中钙的含量很低，钙、磷比例发生了较大的变化，钙、磷比例以 1:10 至 1:20，缺乏维生素 A、维生素 D 和碘。所以在金毛的每日狗粮中，肉类是最重要的，一定要每天让金毛吃到一定的动物肌肉。</p><br><p>鱼的适口性比不上肉类，所以通常而言狗狗都不太喜欢吃鱼。而且在吃鱼的时候，还得注意别让金毛狗被其中的肉刺扎到。</p><br><p>乳品对金毛而言也非常重要的。通常的乳品包括奶油、脱脂乳、乳清、酸奶、奶酪和黄油。乳中含有金毛狗所需的大多数营养成分，但是却缺乏铁和维生素D。</p><br><p>每 100 克乳含能量 271.7 千焦，蛋白质 3.4 克，脂肪 3.9 克，乳糖 4.7 克，钙 0.12 克，磷 0.1 克。</p><br><p>乳对金毛狗的适口性较好，就算是别的种类的狗，都比较喜欢喝奶。</p><br><p>蛋是蛋白质、铁、维生素 B 2、维生素 B 12、叶酸和维生素 A、维生素 D 的良好来源，不过其中缺乏尼克酸。因此不可以将蛋当做金毛的主食，只可作为一份金毛狗粮中的有益补充。</p><br><p>注意事项</p><br><p>夏天是金毛犬最难熬的季节，金毛犬怕热不怕冷。因此主人在夏季更应该照顾好金毛犬，不同季节照顾金毛犬的侧重点也会有区别，主人若是考虑到按照不同季节的特点安排金毛犬的生活，这会让金毛犬更舒适，甚至能延长它的寿命。</p><br><p>夏季金毛犬的饲料容易发生变质，尤其是肉类等高蛋白质饲料，比如要注意预防食物中毒。喂养的饲料应该是经加热后放凉的新鲜食物，金毛犬喂养的量应考虑到夏季犬采食量有所下降适当减少。坚决不可以喂犬发霉变质的的食物。若犬吃食后不久，发生呕吐，腹泻，全身衰弱症状时，要及时救治。</p><br><p>皮肤病</p><br><p>夏天空气的湿度比较大，如果平时给金毛犬洗澡后，必须及时吹干被毛，不要让毛自然干，金毛犬的绒毛很厚很密，表面干了，里面很不容易干，如果长时间毛不干，金毛犬很容易在夏天起湿疹。如果发现湿疹溃烂等皮肤问题，应及时去医院就诊。金毛犬的垫子和褥子也要经常清洗并暴晒。</p><br><p>寄生虫</p><br><p>夏季金毛犬愿意在草地上玩耍，一些寄生虫就容易到金毛犬的身上寄生。定时施药是预防寄生虫的好方法，还可使用杀虫浴液等产品来防虫，经常梳毛可帮助主人在第一时间发现寄生虫并及时用药，特别要注意蜱虫，已经有地区发现蜱虫。</p>",
      identifyIntroduce:
        "<p>金毛犬对于毛发的要求是非常高的，所以在挑选金毛的时候应该特别注意毛色、毛量及毛质三个方面，骨架跟头版也是很关键的，而且耳朵贴面颊是最好的。</p><br><p>金毛犬价格</p><br><p>金毛寻回犬幼犬普通的在600元-1000元，成年金毛寻回犬价格在2000元-3000元。幼犬加上打疫苗，买专业狗粮，买玩具，和其它的费用。算下来也是挺贵的，随着年龄的增长，狗狗消费的成本就增加，一个月洗澡加上狗粮等的开支接近千元。金毛寻回犬有个很好的特点，就是它很好养，毕竟占领了智商的高度。好的金毛寻回犬价格就不菲，万元左右。</p>"
    };
  }
};
</script>

<style scoped>
.jinmao-container /deep/ .jinmao-main {
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
.jinmao-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.jinmao-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.jinmao-container
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