<template>
  <div>
    <el-container class="lachang-container">
      <el-main class="lachang-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="lachangUrl" height="100%" />
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
                      <span style="color:red">腊肠犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">腊肠犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">腊肠犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">腊肠犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">腊肠犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">腊肠犬</span>
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
import lachangImg from "@/assets/img/lachang/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      lachangUrl: lachangImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "腊肠犬",
        englighName: "Dachshund",
        otherName: "腊肠犬",
        area: "遍及各地 ",
        address: "德国",
        shape: "中型犬",
        use: "伴侣犬,狩猎犬",
        group: "工作犬，伴侣犬",
        height: "18-23厘米",
        weight: "11-15公斤",
        life: "12-17年",
        price: "1500-10000元",
        style: "无体味,易打理,吠叫,耐寒"
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
          number: 4
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
          number: 2
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
          number: 5
        }
      ],
      shapeIntroduce:
        "<p>腊肠犬，起源于德国，现在以及发展到全球各地，是一种身长腿短的猎犬。在德语中，原意指的是'獾狗'。后来该品种被发展集嗅猎、追踪及捕杀獾类为一身的穴居动物。虽然'Dachshund'是一个德语单词，但它在德国却并不常用，德国人更愿意叫它Dackel或Teckel。</p><br><p>腊肠犬在所有犬种中算是比较好饲养的，因为它天性独立自主，聪明顺从，对主人下达的指令能够快速理解并执行。</p><br><p>腊肠犬性格十分友好，开朗活泼，勇敢自信，又不乏谨慎。没有攻击性，性情平和，热情，坚定从容，追捕猎物的时候速度非常快。有时候也常做出一些滑稽的行为，是一种能给人带来快乐的狗狗。</p><br><p>容易训练，忠于主人，对陌生人则充满戒心。不管是在地面上还是在地下工作，它均表现得认真负责，不屈不挠，感官十分发达。</p><br><p>在户外，腊肠猎犬勇敢、精力充沛，仿佛永远不知疲倦;在室内，它友善而敏感，时而安静，时而闹腾。</p>",
      originIntroduce:
        "<p>在古埃及寺院里的壁画上，就曾出现过这种身长腿短的动物;在古老的埃及法老王的寝墓中，也有发现雕刻着一种身体长、四肢短的犬只形象，后来经过专家证实，它确实就是德国腊肠狗最原始的祖先，那么就此推算，腊肠犬存在的历史应该也有好几千年了。</p><br><p>墨西哥、希腊、秘鲁以及中国大陆上都有发现类似腊肠犬的石雕模型和粘土制品。在德国古代罗马人居住的遗迹上就曾挖掘出类似腊肠犬的遗体化石，从这些地方人们推断该犬是产自杜唐的纯种犬。</p><br><p>腊肠犬名气大躁应该是从中世纪开始。根据“Bracken (狩猎)”记载，有些犬种经过不断的繁殖之后就变得特别适合地下狩猎的工作。而人们挑选的对象则主要就是那些短腿的犬，在此期间腊肠犬经过重重考验，得到了人们的认可，成为猎犬中最有用途的猎犬品种。它具有极强的地面上猎捕的能力，而且在寻找猎物的同时，还能完成搜索、追踪受伤猎物的任务。</p><br><p>早在1888年成立的一个叫“德国Teckel俱乐部”的机构，就对腊肠犬的饲养作出了描述。数十年来，腊肠犬主要分为三大版型(标准型、迷你型和兔型)，这些腊肠犬都有三种不同的被毛(短毛、刚毛、长毛)。</p>",
      fitIntroduce:
        "<p>腊肠犬活泼，喜欢玩闹，虽然性格有点固执，但对主人十分忠诚，尽管过去是作为猎犬，但体型不大，因此所需要运动量并不是太大，可以适应城市生活。腊肠犬的寿命比较长，很适合作为家庭伴侣犬饲养。</p>",
      measureIntroduce:
        "<p>整体：因为四肢短，因此身体距离地面很近，骨架长而紧密，面颊上的皮肤比较厚，肌肉强健，头部高昂着，表现出一种警惕严肃的面部表情。身长腿短是它最鲜明的外形体征。不过它的灵活性并不受影响，行动敏捷，肢体的弹性良好。</p><br><p>到地面的距离大概只有肩高的三分之一，所以身长和肩高比例大概是1：1.7-1.8。</p><br><p>头：从上面或是侧面看，身子会显得比较长。头部往下逐渐变细，皮质厚却不粗糙。眼脊明显，鼻子软骨以及鼻梁狭长。头骨很平，慢慢地与稍拱的鼻梁相融合。止部明显。鼻镜上的皮质发达。口吻长且够宽，强健有力，能分开与眼线聚合。</p><br><p>眼睛：中等大小，呈圆形，两眼之间的距离适中，眼神充满活力，友善的表情，看起来很容易亲近，绝对不会出现恶毒凶狠的神情，在所有的被毛颜色中，具有深红褐色至带黑的褐色。对于有斑纹的狗来说，出现外斜视、白点或者鱼眼都是不理想的，但勉强能够接受。</p><br><p>耳：直立，不是太向前。长，但并不显夸张。圆而不狭窄，有尖角或折痕。活动灵活，紧靠脸颊的前边缘。</p><br><p>颌/牙：唇部肌肉拉得紧，能很好地盖住下颌。上下颌发达。呈剪状咬合，闭合紧。理想情况下，根据相关要求，应该具有齐全的42颗牙齿。</p><br><p>颈、躯体：颈部足够长，肌肉发达，喉部皮肉紧密，颈背略拱，活动自如。</p><br><p>腰肌肉强健，足够长。胸骨发达，十分突出，显得好似两边略有凹陷。从前面看，肋骨呈椭圆形。从上面和侧面观察，形成的空间较大，为心脏与肺部的活动提供了充分的空间。肋骨很好地贴着背部，肩胛骨与上臂有着合适的长度与角度，前腿盖住了侧面胸骨线的最低点。腹线与腹部略上提。</p><br><p>背：背部位于高高的肩后，背线由颈部向略成坡度的臀部平滑地相连。肌肉结实，发达。</p><br><p>四肢：肌肉发达，角度清晰。从前面看，前腿洁白，且骨量充足，站立时笔直;足尖笔直朝前。肩部的肌肉弹性极好。肩胛骨长，有一定坡度，与胸部的接合非常紧密。上臂与肩胛骨的长度相等，骨质强健，肌肉发达，与肋骨紧密接合，但不会影响到肢体的自由活动。肘部既不内展也不外翻。前臂短，应尽量保持直立。足部关节与肩关节相比，显得略微紧靠身躯。足爪从侧面看，既不陡峭也不明显前倾。前足的脚趾紧凑，明显拱起，脚垫强健而耐磨，趾甲短而坚硬。第五个脚趾的作用不大，不过也没必要切除。</p><br><p>臀：臀部宽阔，足够长，略有坡度。</p><br><p>尾巴：尾巴适当翘起，太高不太合适，最好与背线在一个水平线上，成为背部的延续。允许尾部的最后三分之一部分略弯曲。尾巴纤细，尾根粗壮，没有过多的被毛。尾巴下面偶尔有一些较长的针毛，不算缺陷。</p><br><p>步态/运动：运动的时候足爪应该可以覆盖住地面，线条流畅，充满活力，强而有力的后驱，在运动过程中能产生轻微的并可传送到背线的弹力。尾巴应连续地延伸到背线，略拱。前后腿可以平行的活动。</p><br><p>被毛：带有绒毛，顺滑而有光泽，紧贴在身体上，在喉部和下腹部位的被毛较长。耳朵上的毛发必须超出耳朵的下边缘(绒毛)。腿后方有明显的绒毛。尾巴下面的毛最长，形成真正的斑纹。毛发上不可以有任何光秃的斑点。</p><br><p>颜色：红色、略带红色的黄色、所有带有或者不带有斑点的黑色毛发。亮色特别受欢迎，红色比略带有红色的黄色或者黄色要好。即使具有强烈斑点的黑色毛发也被分类为全色，而不是作为其他颜色。不希望为白色，但是仅有的小小斑块不算失格。鼻子和趾甲为黑色，带有红色的棕色是可以接受的，但是不带红色最好。</p>",
      feedIntroduce:
        "<p>腊肠犬因为体型比较特殊，身长而腿短，因此比较容易发胖，肥胖之后就更容易引发各个器官的疾病，所以必须保证它每天有足够的活动量。最好每天让它在室内走动和奔跑。在活动过程中，如果身上沾上污泥和尘埃，要及时用毛巾和湿布给它擦干净，保持被毛的清洁和柔顺。</p><br><p>尤其是长毛型的腊肠犬，刷毛工作更应该引起重视。</p><br><p>至于刚毛型的腊肠犬，被毛也要定期梳理，不要因为它被毛的粗短而忽略，否则也会积污生虱。</p><br><p>除了梳毛外，还需要定期用浓度为2%的硼酸水为腊肠犬清除眼垢(用脱脂消毒棉)、耳垢和牙垢，并定期修剪爪指甲。</p><br><p>到了合适的时机就要开始训练它养成不胡乱吠叫，不胡乱撕咬物品以及定点大小便的好习惯。</p><br><p>孕期腊肠犬饲养的方法</p><br><p>怀孕的腊肠犬在饲养过程中由于胚胎需要营养、胎盘和胚胎本身产生的各种影响，使得母犬在妊娠期间，身体会出现一系列的生理变化。为了满足母体和胎儿的生理需要，妊娠期母犬的饲养管理重在增强体质，确保胎儿的发育健全和避免流产。</p><br><p>妊娠母犬的饲养，除了要供给全价的日粮外，饲料必须保证卫生和质量。像发霉、腐败、变质、带有毒性和刺激性的饲料绝对不可以给怀孕的母犬吃，要不然很容易流产。饲料尽量选择精细的，而且最好固定为某一种，没有特殊情况不要轻易更换。</p>",
      identifyIntroduce:
        "<p>首先，买狗建议一定要去正规的犬舍。因为通常正规犬舍犬只的质量更有保障，幼犬的繁育过程也比较正规，引进的多为国内外有名的种犬。纯度相对来说也是比较高的，再加上饲养技术以及训练管理上都更为专业、标准化。而且，一般在正规犬舍买狗的话，对方都能提供幼犬的血统证明。部分犬舍还会对遗传病出示证明，从而消除买家的担心。而不足的地方，就是价格要更高一些。让我说的话，如果真的想长久的养一只狗狗，与其从集市上买只病狗后续更麻烦，还不如多点花钱买个纯种健康的腊肠犬，安全，养起来也省心。</p><br><p>当然，如果你有认识饲养了腊肠母犬的朋友就更好了，对方的狗狗繁殖之后，可以直接去求购。虽然这种途径无法保证宠物狗的纯度够高，但价格合理，而且也健康，相对来说，性价比还是可以的。</p><br><p>注意：无论是去哪里买狗，都应仔细观察狗狗的状况。如果是犬舍，一定要选择那种设备齐全、干净卫生的犬舍。并要求犬舍出具宠物狗的健康证明，以及打疫苗的证明，打过疫苗的宠物狗健康状况肯定是更好的。如果没有打疫苗，带回家之后一定要尽快先去注射疫苗。</p><br><p>最后就是腊肠犬的外形了，这也是最简单、最直接的判断方法。大家都知道，腊肠犬最大的特点就是身长腿短，腊肠胸宽且低，一般是越低越好。背部平直，肚子不会因为胖而下坠，也不会因为瘦而干瘪。腊肠犬的尾巴长，而且越往底部越细。一般头大，胸宽，背部平直，身体特长，四肢短者为佳。</p>"
    };
  }
};
</script>

<style scoped>
.lachang-container /deep/ .lachang-main {
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
.lachang-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.lachang-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.lachang-container
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