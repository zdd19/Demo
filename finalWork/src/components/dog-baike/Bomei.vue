<template>
  <div>
    <el-container class="bomei-container">
      <el-main class="bomei-main animated fadeIn">
        <el-row>
          <el-col :span="18" :offset="3" style="position:relative;overflow: hidden;">
            <img :src="dogBaikeUrl" class="baike-img" />
            <el-card class="box-card">
              <el-row>
                <el-col :span="12">
                  <div class="dog-img">
                    <img :src="bomeiUrl" height="100%" />
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
                      <span style="color:red">博美犬犬</span>
                      <span>的品种介绍</span>
                    </div>
                    <div v-html="shapeIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="发展起源">
                    <span slot="label">
                      <i class="el-icon-share"></i> 发展起源
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">博美犬犬</span>
                      <span>的发展起源</span>
                    </div>
                    <div v-html="originIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="适养人群">
                    <span slot="label">
                      <i class="el-icon-user-solid"></i> 适养人群
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">博美犬犬</span>
                      <span>的适养人群</span>
                    </div>
                    <div v-html="fitIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="衡量标准">
                    <span slot="label">
                      <i class="el-icon-document-copy"></i> 衡量标准
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">博美犬犬</span>
                      <span>的衡量标准</span>
                    </div>
                    <div v-html="measureIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="喂养方法">
                    <span slot="label">
                      <i class="el-icon-dish"></i> 喂养方法
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">博美犬犬</span>
                      <span>的喂养方法</span>
                    </div>
                    <div v-html="feedIntroduce" class="introduce-text"></div>
                  </el-tab-pane>
                  <el-tab-pane label="鉴别挑选">
                    <span slot="label">
                      <i class="el-icon-edit"></i> 鉴别挑选
                    </span>
                    <div class="shape-introduce-title">
                      <span style="color:red">博美犬犬</span>
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
import bomeiImg from "@/assets/img/bomei/baike.jpg";
import dogBaike from "@/assets/img/dog-baike.png";
import bone from "@/assets/img/bone.png";
export default {
  data() {
    return {
      bomeiUrl: bomeiImg,
      dogBaikeUrl: dogBaike,
      boneUrl: bone,
      dogMsg: {
        name: "博美犬",
        englighName: "Pomeranian",
        otherName: " 松鼠犬/波美拉尼亚犬",
        area: " 德国",
        address: " 德国",
        shape: "小型犬",
        use: "玩具犬",
        group: "看守犬和伴侣犬",
        height: "22-28cm",
        weight: " 2-3kg",
        life: "14-15年",
        price: "800-8000元",
        style: "无体味,粘人,友善,护家,耐寒"
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
          number: 4
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
          number: 4
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
          number: 3
        }
      ],
      shapeIntroduce:
        "<p>博美犬，学名哈多利系博美犬（俗称英系博美犬），原产于德国，是德国狐狸犬的一种，是一种紧凑、短背的玩赏犬，体型小巧可爱，性格天真活泼，忠实于主人，适合当家庭伴侣犬。是一种非常爱玩的小型玩赏犬，同时它很真诚温顺。</p><br><p>博美犬是牧羊犬出身，聪明，在小型犬的智力排行上可是位列第5，因此非常容易驯养。</p><br><p>博美犬的步态骄傲、庄重而活泼。有着积极向上的气质和行为。博美的毛都是很多的像个小毛球球，有点喜欢叫。</p><br><p>它拥有柔软、浓密的底毛和粗硬的披毛。尾根位置很高，长有浓密饰毛的尾巴卷放在背上。天性警惕、好奇而聪明，轻快的举止加上它小巧的体型，非常招人喜欢。</p>",
      originIntroduce:
        "<p>博美犬学名哈多利系博美犬，俗称英系博美犬。也被称作为波美拉尼亚犬、松鼠犬、狐狸犬。</p><br><p>博美犬起源于19世纪，属于尖嘴犬系品种，祖先是北极的雪橇犬，它则是雪橇犬退化而来的品种，它和荷兰毛狮犬以及挪威糜缇有密切的关系。</p><br><p>根据该犬种最早的历史记载，它是来自波兰和德国沿海交界地的博美拉尼亚地区。在那个时代，这些犬被当地人用来看守羊群。到了1750年才传到欧洲各国，包括意大利。</p><br><p>早期的博美犬体型较之现在是要大一些的，而且大多数都是白色的，自19世纪以来，经过不断的选拔、配种才形成了如今被毛蓬松柔软、颜色鲜明的小型犬。现在的博美以及越来越多元化了。当然白色的博美显然更显纯正，也更受大家欢迎和喜爱。</p><br><p>博美犬名字的由来是和波美拉尼亚有关，但真正追溯起来它的起源地并不哪里，可能只是在那里得到了繁衍从而体形变小。</p><br><p>实际上，该犬第一次在英国引起人们的注意是在19世纪中期，当时一些犬的体重据说达到了13.6kg，而且它的体形、被毛以及毛色都和德国尖嘴狼犬非常像。</p><br><p>1870年博美犬正式被英国俱乐部承认，而也正从那时候起才有越来越多的人知道该犬。</p><br><p>1888年，维多利亚女王访问意大利的时候，佛罗伦斯的百姓们赠送给女王一只叫Marco的意大利博美犬，这只犬女王非常喜爱，甚为宠溺，并将它带回英国。因为女皇的一举一动都具有很大的号召力，因此该犬也受到广泛欢迎。维多利亚女皇喜欢小体形的博美犬，因此往后就推动了该犬的小型化。</p><br><p>维多利亚女皇临终前还让人把她心爱一头叫Turi的小博美犬放在她的床边。这只小犬一直陪伴女皇直到她去世。</p><br><p>博美犬从1892年开始在美国的犬展参加混合犬组的比赛，到1900年，纽约才正式将它归类。</p><br><p>1911年，美国博美犬俱乐部第一次举办犬展。美国犬展中早期的优胜者都是骨骼发达、耳大，体重低于2.72kg的博美犬。</p>",
      fitIntroduce:
        "<p>博美犬需要定期整理，所以不适合生活中空闲时间少的忙碌人士饲养。</p><br><p>博美犬适合室内饲养，但是由于它活泼好动的个性，为了防止它在屋内搞破坏，最好每天让它到户外运动或带它散步，以消耗它旺盛的活力。</p><br><p>体型虽然娇小可爱，看起来很柔弱，其实上它有非常强的警惕性，不仅仅用来供人玩赏而已，还完全是可以作为看家犬的。</p><br><p>一般家里都适合养博美犬，尤其适合老人和小朋友，博美体型小，开朗忠实友善，不具备攻击力，护主粘人。</p>",
      measureIntroduce:
        "<p>整体：头部和身体的比较相称，全身大多数部位的毛都是白色，看上去气质高贵，远远看去像是一个毛茸茸的球体，非常讨人喜欢，脖子周围的饰毛(颈毛)像鬃一样，尾巴被毛丰富，很明显举过背。长有机灵警惕的眼晴，狐狸样头，小而尖、紧贴的耳朵，形成一个独具特色、面颊下垂的外貌。</p><br><p>博美的体重范围是3~7磅，比赛级的理想体重则是4~6磅。只要不在这两者范围内的犬只都是失格的，不受欢迎的。</p><br><p>不管怎么样，它的整体质素要比体型的大小重要得多。体长(从肩到臀的长度)要比肩高略小，而从胸到地面的距离则为肩高的1/2。骨量中等，腿的长度和身体结构整体保持很好的平衡。摸上去能感觉它身体非常结实。</p><br><p>头：头骨密合，头盖骨略圆，不过不可以为拱形。头部和身体的比例很合适，口吻短且直，非常精致，可以自由的张开，且不会显得粗鲁。你可以想象一下，有一条线从鼻尖开始穿过两眼中间和耳朵尖，这样你可以发现博美的头部呈楔状。缺陷：头部太圆，头骨呈拱形，上颚突出或下颚突出。博美的鼻镜和眼圈都是黑色的，除了棕色、河狸色和兰色，博美身体部位的颜色都是和自身毛色非常配的。</p><br><p>眼睛：眼睛颜色深、明亮，中等大小，呈杏仁状，略斜。位于头骨明显的止部两侧。眼睑为各种色度的黑色(褐色狐狸犬的眼睑为暗褐色。表情警惕，可以说和狐狸是有点相似的。</p><br><p>耳：当从前面或侧面看时，可看到位置很高、竖立着的小耳朵，形状似狐狸耳。两耳间的间距不大,三角形，尖端硬。</p><br><p>颌/牙：双颌发育良好，42颗牙成完全的剪状咬合，符合狗牙的规则，也就是上下牙齿紧叩，双颌成方形。(在小型狐狸犬和玩具狐狸犬中，允许缺少前臼齿。在所有狐狸犬中，钳咬合也是可接受的。</p><br><p>颈、躯体：颈部中等长度，宽阔，略成拱形，喉部无垂肉，脖颈被毛厚实形成一个巨大的翎颌。</p><br><p>马肩隆/背：高高的马肩隆缓缓下落，短但肌肉结实，与背部平滑的结合。</p><br><p>胸：深，扩张良好，前胸发育良好。</p><br><p>腹线：胸尽可能地向后延伸;腹略往上提。</p><br><p>背：非常短，但背线水平，肌肉结实：从直立的耳尖开始，曲线柔和。尾巴覆盖住部分背部区域，让整体外形近乎完美。</p><br><p>四肢：前肢笔直，前部相当宽。肘关节强壮，紧贴胸部，既不外翻也不内弯。前臂长度适中、稳固、笔直。前臂后侧的饰毛完整。掌骨(胶骨)强壮，在站立时，与长度适中的前胶骨形成20度夹角。前脚尽可能地小，圆且紧凑，如猫足，脚趾呈自然的拱形。脚趾甲和脚掌为各种色度的黑色，不过褐色犬的该部位一般应为暗褐色。后躯肌肉十分发达，至飞节处部位都覆盖着厚实的被毛。后腿站立的时候非常笔直，相互平行。上、下大腿的长度差不多一样。后膝关节强壮，与胶骨的夹角合适，既不外翻也不内弯。跖骨(飞节)长度中等、非常强壮，与地面垂直。 后肢足爪与前肢的一致。</p><br><p>臀：臀宽且短，但是不显得下塌。</p><br><p>尾巴：位置高，中等长度。往上延伸，在背上向前卷曲，根部笔直，紧紧的贴在背上，形成扫把样。尾尖为双重卷曲也可以接受。</p><br><p>被毛：博美犬具有双层被毛，底毛柔软而浓密。披毛又长又直，光泽度强，且质地粗硬。厚厚的底毛支撑起外层披毛，使其可以竖立在身体上。脖子、肩膀前面以及前胸的被毛浓密，在肩和胸前形成饰毛。头部和腿部的被毛比身体其他部分的被毛要短，且紧贴身体。前肢的饰毛延伸到脚腕上，尾巴上布满长且粗硬，还披散开的直直的被毛。</p><br><p>颜色：任何颜色都被认可，多数是橙色，茶色，奶油色，黑色，艳丽的颜色等。</p>",
      feedIntroduce:
        "<p>给博美犬轻松喂食四大方法:</p><br><p>1.保证供给博美犬清洁足够的饮水。将干净的饮水装在专用的宠物饮水瓶里，让博美犬自由饮用，不但保证了饮水的清洁，也保护了博美华丽的长毛。</p><br><p>2.雌性犬分娩的时候，会因为喘息、流涎和流血而失水失血导致身体虚弱、口干舌燥，可以为它们及时的补充温盐水、红糖水、稀牛奶和肉汤等，记住一定不可以给它们喝冷水。至于饮食暂时不需要，因为狗妈妈有吃下胎盘，不会感到饥饿。</p><br><p>3.选择适合博美犬的犬粮去喂饲。</p><br><p>4.制作饲料，动物性食品包括猪牛肉、鸡胸肉、鸡蛋、牛奶以及脂肪少但蛋白质高的瘦肉。鸡肝是狗狗最喜欢的食物，里面富含铁质，不过要控制给予的量，不能过多或过少。植物类的食品，比如面条、米饭等则富含维生素，而胡萝卜、白萝卜、白菜等蔬菜类的，则应该切碎煮熟后再喂食。钙对雌狗、幼犬非常重要，应及时补充。</p><br><p>5.博美幼犬时可食用泡软的幼犬粮加适量钙粉，补充营养。成年后可换成犬粮食用，更换狗粮时不要一下子全换过来，每回掺一半新的食物，试个两、三天，逐渐增加新的分量，一周后再全用新的。平时，主人也可以在狗粮中添加清水煮的胡萝卜、鸡胸肉、鸡蛋黄等食物，既营养又美味。</p>",
      identifyIntroduce:
        "<p>一只漂亮的博美需要具备以下几个条件：头部要圆，身体短小紧凑，，毛发浓密、柔软、蓬松并且直立，两只眼睛与鼻子成正三角形，嘴型为扁状，四肢直立。</p>"
    };
  }
};
</script>

<style scoped>
.bomei-container /deep/ .bomei-main {
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
.bomei-container /deep/ .el-tabs__item {
  padding: 0px 30px;
}
.bomei-container
  /deep/
  .el-tabs--top.el-tabs--border-card
  > .el-tabs__header
  .el-tabs__item:last-child {
  padding-right: 30px;
}
.bomei-container
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