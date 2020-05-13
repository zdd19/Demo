<template>
  <div>
    <el-container class="chat-container">
      <el-main class="chat-main animated fadeIn">
        <el-row>
          <el-col :span="13" :offset="3">
            <div>
              <el-card class="box-card">
                <div slot="header" class="clearfix">
                  <el-link
                    :underline="false"
                    class="chat-link choose-link"
                    @click="showRecommend()"
                    ref="recommend"
                  >推荐</el-link>
                  <el-link
                    :underline="false"
                    class="chat-link"
                    @click="showAttention()"
                    ref="attention"
                  >关注</el-link>
                  <el-link :underline="false" class="chat-link" @click="showHotOne()" ref="hot">热榜</el-link>
                </div>
                <div v-if="recommendVisable">
                  <div v-for="item in recommendedContent" :key="item.id">
                    <div class="card-title">{{ item.title }}</div>
                    <div :ref="item.id" class="card-content2">
                      <span v-html="item.content"></span>
                      <el-button
                        class="show-littlebtn"
                        @click="showLittleContent(item.id)"
                        icon="el-icon-arrow-up"
                      >收起</el-button>
                    </div>
                    <div class="card-bottom">
                      <el-button type="primary" @click="showAllContent(item.id)">阅读全文</el-button>
                      <div>
                        <el-button icon="el-icon-chat-dot-round" @click="showComment(item.id)">显示评论</el-button>
                        <el-dropdown>
                          <el-button>
                            <i class="el-icon-s-promotion" style="color:#0984e3"></i>分享
                          </el-button>
                          <el-dropdown-menu slot="dropdown">
                            <el-dropdown-item>
                              <el-button type="text" @click="open2" style="width:100%;">
                                <i class="iconfont iconqq" style="color:#0984e3"></i>QQ
                              </el-button>
                            </el-dropdown-item>
                            <el-dropdown-item>
                              <el-button type="text" @click="open2" style="width:100%;">
                                <i class="iconfont iconwechat" style="color:#00b894"></i>微信
                              </el-button>
                            </el-dropdown-item>
                            <el-dropdown-item>
                              <el-button type="text" @click="open2" style="width:100%;">
                                <i class="iconfont iconxinlangweibo" style="color:#e17055"></i>新浪微博
                              </el-button>
                            </el-dropdown-item>
                          </el-dropdown-menu>
                        </el-dropdown>
                        <el-button>
                          <i class="el-icon-star-on" style="color:#fdcb6e"></i>收藏
                        </el-button>
                        <el-button @click="ReportVisible=true">
                          <i class="el-icon-s-flag" style="color:#d63031"></i>举报
                        </el-button>
                      </div>
                    </div>
                    <div>
                      <div class="comment" :ref="'comment'+item.id">
                        <div v-for="a in item.comment" :key="a.id" class="one-comment">
                          <span>{{a.name}}</span>
                          <span>{{a.time}}</span>
                          <span>{{a.content}}</span>
                        </div>

                        <div class="write-comment">
                          <div>
                            <el-input placeholder="请输入内容" v-model="input" clearable></el-input>
                          </div>
                          <div>
                            <el-button type="primary" @click="publish(item.id)">发表</el-button>
                          </div>
                          <div>
                            <el-button type="danger" @click="closeComment(item.id)">关闭评论</el-button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <el-divider></el-divider>
                  </div>
                </div>

                <div class="attention" v-if="attentionVisable">
                  <i class="el-icon-notebook-1 attention-icon"></i>
                  <span>还没有关注的人哦~~</span>
                </div>
                <div class="attention" v-if="hotOneVisable">
                  <i class="el-icon-notebook-1 attention-icon"></i>
                  <span>暂无信息</span>
                </div>
              </el-card>
            </div>
          </el-col>
          <el-col :span="5" class="chat-right">
            <el-card class="box-card">
              <div class="publish-content">
                <el-row>
                  <el-col :span="8" class="publish">
                    <div @click="writeTextVisible=true">
                      <i class="el-icon-document publish-icon"></i>
                      <span class="publish-span">写文章</span>
                    </div>
                  </el-col>
                  <el-col :span="8" class="publish">
                    <div @click="writeThinkVisible=true">
                      <i class="el-icon-edit publish-icon"></i>
                      <span class="publish-span">写想法</span>
                    </div>
                  </el-col>
                  <el-col :span="8" class="publish">
                    <div @click="writeBatVisible=true">
                      <i class="el-icon-document-remove publish-icon"></i>
                      <span class="publish-span">草稿箱</span>
                    </div>
                  </el-col>
                </el-row>
                <el-row class="publish-line2">
                  <el-col :span="8" class="publish">
                    <div @click="waitSeeVisible = true">
                      <i class="el-icon-time publish-icon"></i>
                      <span class="publish-span">稍后看</span>
                    </div>
                  </el-col>
                  <el-col :span="8" class="publish">
                    <div @click="writeBatVisible=true">
                      <i class="el-icon-chat-line-round publish-icon"></i>
                      <span class="publish-span">写评论</span>
                    </div>
                  </el-col>
                  <el-col :span="8" class="publish">
                    <div @click="askPeopleVisible=true">
                      <i class="iconfont iconask_font publish-icon"></i>
                      <span class="publish-span">问大佬</span>
                    </div>
                  </el-col>
                </el-row>
              </div>
            </el-card>
            <el-card class="box-card about-mine">
              <div class="about-mine-content">
                <div class="about-mine-content-left">
                  <i class="el-icon-star-on" style></i>
                  <span>我的收藏</span>
                </div>
                <div class="about-mine-content-right">
                  <span>0</span>
                </div>
              </div>
              <div class="about-mine-content">
                <div class="about-mine-content-left">
                  <i class="el-icon-star-on" style></i>
                  <span>我的关注</span>
                </div>
                <div class="about-mine-content-right">
                  <span>0</span>
                </div>
              </div>
              <div class="about-mine-content">
                <div class="about-mine-content-left">
                  <i class="el-icon-star-on" style></i>
                  <span>我的邀请</span>
                </div>
                <div class="about-mine-content-right">
                  <span>0</span>
                </div>
              </div>
              <div class="about-mine-content">
                <div class="about-mine-content-left">
                  <i class="el-icon-star-on" style></i>
                  <span>帮助中心</span>
                </div>
              </div>
            </el-card>
          </el-col>
        </el-row>
      </el-main>
    </el-container>

    <el-dialog title="写文章" :visible.sync="writeTextVisible" center>
      <el-form ref="textForm" :model="textForm" label-width="80px">
        <el-form-item label="文章名称">
          <el-input v-model="textForm.name"></el-input>
        </el-form-item>
        <el-form-item label="文章分类">
          <el-select v-model="textForm.region" placeholder="请选择心得分类">
            <el-option label="养宠故事" value="story"></el-option>
            <el-option label="前列资讯" value="zixun"></el-option>
            <el-option label="养护知识" value="zhishi"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="只给我看">
          <el-switch v-model="textForm.delivery"></el-switch>
        </el-form-item>
        <el-form-item label="标签">
          <el-tag
            :key="tag"
            v-for="tag in dynamicTags"
            closable
            :disable-transitions="false"
            @close="handleClose(tag)"
          >{{tag}}</el-tag>
          <el-input
            class="input-new-tag"
            v-if="inputVisible"
            v-model="inputValue"
            ref="saveTagInput"
            size="small"
            @keyup.enter.native="handleInputConfirm"
            @blur="handleInputConfirm"
          ></el-input>
          <el-button v-else class="button-new-tag" size="small" @click="showInput">增加标签</el-button>
        </el-form-item>
        <el-form-item label="上传图片">
          <el-upload action="https://jsonplaceholder.typicode.com/posts/" list-type="picture-card">
            <i class="el-icon-plus"></i>
          </el-upload>
        </el-form-item>
        <el-form-item label="文章内容">
          <el-input type="textarea" v-model="textForm.desc"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="writeTextVisible = false">取 消</el-button>
        <el-button type="primary" @click="showSuccess">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="写想法" :visible.sync="writeThinkVisible" center>
      <el-form ref="thinkForm" :model="thinkForm" label-width="90px">
        <el-form-item label="现在的想法">
          <el-input type="textarea" v-model="thinkForm.desc"></el-input>
        </el-form-item>
        <el-form-item label="只给我看">
          <el-switch v-model="thinkForm.delivery"></el-switch>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="writeThinkVisible = false">取 消</el-button>
        <el-button type="primary" @click="showSuccess">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="草稿箱" :visible.sync="writeBatVisible" center>
      <el-form ref="batForm" :model="batForm" label-width="80px">
        <el-form-item label="草稿内容">
          <el-input type="textarea" v-model="batForm.desc"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="writeBatVisible = false">取 消</el-button>
        <el-button type="primary" @click="showSuccess">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="稍后看" :visible.sync="waitSeeVisible" center>
      <div class="wait-see">
        <div v-for="item in recommendedContent" :key="item.id" class="one-wait-see">
          <span>{{item.id+1}}.</span>
          <span>{{item.title}}</span>
        </div>
      </div>
      <div slot="footer" class="dialog-footer">
        <el-button @click="waitSeeVisible = false">取 消</el-button>
        <el-button type="primary" @click="waitSeeVisible = false">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="写评论" :visible.sync="writeBatVisible" center>
      <el-form ref="batForm" :model="batForm" label-width="80px">
        <el-form-item label="评论内容">
          <el-input type="textarea" v-model="batForm.desc"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="writeBatVisible = false">取 消</el-button>
        <el-button type="primary" @click="showSuccess">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="问大佬" :visible.sync="askPeopleVisible" center>
      <el-form ref="askForm" :model="askForm" label-width="80px">
        <el-form-item label="问题">
          <el-input v-model="askForm.name"></el-input>
        </el-form-item>
        <el-form-item label="问题说明">
          <el-input type="textarea" v-model="askForm.desc"></el-input>
        </el-form-item>
        <el-form-item label="匿名">
          <el-switch v-model="askForm.delivery"></el-switch>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="askPeopleVisible = false">取 消</el-button>
        <el-button type="primary" @click="askPeople">确 定</el-button>
      </div>
    </el-dialog>

    <!-- 举报 -->
    <el-dialog :visible.sync="ReportVisible" center width="20%">
      <div class="report">
        <span>举报</span>
        <span>请选择举报理由</span>
      </div>
      <div class="report-checklist">
        <el-checkbox-group v-model="checkList">
          <el-checkbox label="低质文章"></el-checkbox>
          <el-checkbox label="垃圾广告"></el-checkbox>
          <el-checkbox label="辱骂以及其他不文明行为"></el-checkbox>
          <el-checkbox label="有害信息"></el-checkbox>
          <el-checkbox label="涉嫌侵权"></el-checkbox>
        </el-checkbox-group>
      </div>
      <div slot="footer" class="dialog-footer">
        <el-button @click="askPeopleVisible = false">取 消</el-button>
        <el-button type="primary" @click="report">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
export default {
  data() {
    return {
      input: "", //评论
      activeName: "first",
      height: true,
      recommendVisable: true,
      attentionVisable: false,
      hotOneVisable: false,
      checkList: [],

      ReportVisible: false, //举报dialog
      writeTextVisible: false, //写文章dialog
      writeThinkVisible: false, //写想法dialog
      writeBatVisible: false, //写草稿dialog
      waitSeeVisible: false, //稍后看dialog
      askPeopleVisible: false, //问大佬dialog

      dynamicTags: ["狗狗"],
      inputVisible: false,
      inputValue: "",
      textForm: {
        name: "",
        region: "",
        delivery: false,
        desc: ""
      },
      thinkForm: {
        delivery: false,
        desc: ""
      },
      batForm: {
        desc: ""
      },
      askForm: {
        name: "",
        delivery: true,
        desc: ""
      },
      recommendedContent: [
        {
          id: 0,
          title: "“Space Dogs”：狗狗是人类最好的朋友",
          content:
            "<p>20世纪50年代，二战方才结束，作为主战场的欧洲，人们正忙着重建家园，谁也没有时间和多余的物资豢养宠物，或是照料路边的流浪狗。而生活在莫斯科街头的流浪狗们的生活则更为艰难，对它们来说，熬过动辄零下20摄氏度的冬日比寻找食物这一任务更加困难。</p><p>1950年夏天开始，人们常常可以在莫斯科夜晚的街头见到这样的景象：一辆徐驰的汽车里，一名男子张望着两边的道路，双目搜寻着流浪狗的踪迹，一旦看到令其心满意足的狗狗，便下车以香肠引诱之，然后驶向某个隐秘的地方。</p><p>彼时的世界笼罩在冷战的氛围中，人们的神经依然紧绷，对这神秘而古怪的举动，大家自然三缄其口。然而，围绕军备竞赛和太空计划而持续不断的冷战，至少对半个世界之后的我们来说，不难将这一举动与两者联系起来。确实，这些狗狗是苏联太空计划主持人谢尔盖·帕夫洛维奇·科罗廖夫用以试验载人宇宙飞船的。在尤里加加林之前，是狗狗们经过一次次实验替人类开路。</p><p>Laika是第一个进入地球轨道的生物。被苏联太空计划的某个科学家相中之后，Laika结束了在街头流浪的生涯，从此进入实验室接受太空训练。为她专门打造的狗狗舱，装备有空气调节系统，提供可呼吸并且温度适宜的空间；喂养系统保证了狗狗的进食和饮水，还有一个真空杯帮助狗狗排泄；当然，Laika身上不同部位都安装上了感应器，可接收一切重要生物信号甚至Laika的动作。1957年11月3日，Laika乘坐着狗狗专列进入了地球轨道。第二天，这条叫Laika的狗狗占据了全球所有报纸的头条。</p><p>然而，彼时科罗廖夫并没有研发出可以让狗狗安全回到地球的技术，Laika有非常大的概率死亡。科学家们提出在舱内对Laika实施安乐死，好让她平静地停止呼吸，但遭到了上局的反对。最终由于返回舱的隔热性能尚未完善，Laika热死在舱内。不过这个秘密除了直接负责这个任务的科学家和工程师之外，谁也不知道。为了宣传需要，苏联方面的对外口径依然是Laika安全抵达地球，健康并且快乐。随后，带有Laika图像的各种纪念品层出不穷，邮票、明信片、手表、香烟盒、瓷器装饰品，等等。</p><p>美国的动物保护协会极力抗议苏联的这种做法（虽然美国人自己也拿大猩猩Ham做太空实验），但苏联依然寻求流浪狗的帮助，来探测生物是否有进入宇宙空间的可能。在Laika之后，Belka和Strelka作为继任者乘坐斯普特尼克5号再次进入地球轨道。和Laika不同，苏联航空局这次对Belka和Strelka的任务要求是让它们俩活着回来，所以为Belka和Strelka制作的空间舱与Laika的相比，又改进并且复杂了许多，最显著的改变是增加了冷却系统以防太阳光照射造成的持续升温。</p><p>1960年7月28日，科罗廖夫按下了发射键。通过直播电视，一开始狗狗们没有给出任何的动作和反应，直到进入太空5个小时之后，才显示Belka开始呕吐，狗狗们醒了过来。在这之后不到一个月的时间里，各种数据和实时摄像显示狗狗们的生命体征正常。在绕着地球飞行了18圈之后的8月19日，科罗廖夫下达了返回地球的指令。对于狗狗是否能活着回到地球，科罗廖夫没有十足的把握。幸运的是，它们活着回来了。它们俩的这次旅行，让苏联宇航局百分百确定，对于那完全未知的宇宙，生物是可以过去，并且安全回来的。于是过了八个月，继狗狗前辈们之后，尤里加加林成功飞上太空，成为世界第一位太空人。</p><p>一时间Belka和Strelka成了英雄，各种光辉耀眼的新闻照片在世界各地传播，各种纪念品依然爆炸式生产，已然成了苏联对外宣传的一道风景线，狗狗们甚至成为了美苏之间的外交调节员。1961年的维也纳会议是美苏两国领导人在冷战期间的第一次面会，虽然白天的会议气氛依然紧张，但是在晚宴上，杰奎琳·肯尼迪向科罗廖夫要了一只他的太空狗。正好Strelka生了一窝小奶狗，几周之后白宫就从苏联大使馆收到了一只小狗狗。白宫害怕这只狗狗带着什么间谍设备，就让联邦调查局从里到外检查了一只这只狗狗，最终显示，这是一只自由的小奶狗！</p><p>于是航天英雄Strelka的后代就在白宫住下了，并被取名为Pushinka。肯尼迪在给赫鲁晓夫的回信上写道，“我和杰奎琳很高兴接收Pushinka，虽然她从苏联到美国的航班不如她的妈妈Strelka从地球到外太空的航班来的传奇。”两年之后，生活在白宫Pushinka又生了一窝小崽，杰奎琳决定将两只小奶狗送给美国的小朋友。于是来自全国各地的信件蜂拥而至，每个小朋友都在信里认真地阐述想要狗狗的理由。</p><p>1963年肯尼迪总统遇刺之后，Pushinka被白宫里的一名花匠收养并生下一窝一窝的小崽子。时至今日，Strelka的后代们也许依然生活在俄罗斯和美国各地，虽然它们作为太空家族的后代早已被人遗忘，但总算是从苏联寒冷的冬日街头活了下来，找到了好的归宿。</p>",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ]
        },
        {
          id: 1,
          title: "养狗经历：宠物和人",
          content:
            "<p>前几年我家养了一只狗狗，狗狗脾气很倔强，我总是希望驯化，可狗狗根本不听话，我妈说狗狗是在向我学习。</p><p>一次从电视上看到警犬和武警们相关节目，主持人形容训狗的武警是狗狗的父母，因为这件事影响，我不觉间联想到父亲教育我的点点滴滴，从自己训狗时的心理状态想到了父亲教育我的时候内心深处的想法，因为爱狗这个诱因，我终于读懂了父亲的心。</p><p>我仔细观察过很多狗狗，不管主人是否爱他们，由于我发自至诚心对动物的关爱，附近很多狗狗见到我时很明显有种羡慕我家狗狗的眼神，也许那些狗狗们都在想：“如果他是我的主人该多好啊！”</p><p>我非常爱护动物，但对自己家的狗狗却很严厉，可能源自这种因素影响，我发现我养的狗狗也一样，好像很羡慕别家狗狗的主人没有那么严厉。</p><p>那只倔强的狗狗在陪伴我十年多以后，2011年最后一天离开家，再也没有回来，狗狗肯定是外出时遇到偷狗贼被坏人谋杀了。</p><p>2017年春节时，我看到有网友说自己的狗狗没人照顾，我考虑到很多人把狗狗养大了就杀害，为了预防狗狗长大后被主人杀了，我赶紧联系，这个网友把狗狗赠送给了我。</p><p>现在狗狗比刚来我家时长大很多，可我又再次发现了一些老问题，就是狗狗好像非常羡慕别的狗狗不挨打。我承认确实有因为一些事狠狠地打狗狗，实际上那些不打狗狗的人，照顾家里的动物远远不如我细心和懂得动物们冷暖饥渴等内心深处的苦。</p><p>最近我给狗狗把狗窝特别有改造，增加了挡风的东西，狗窝里我除了自己两件毛衣还加了两条裤子垫着，当时真想把电热毯给狗狗铺上，如果需要还能通电加温，后来想想还是等等若需要再说。</p><p>昨天我有事出去，回来就看到狗狗把毛衣裤子全部叼出来像是我们在晒被子，昨天还只是阴天，而今天下雨了，晚上还可能会下雪，今天我出去回来时又看到相同一幕，狗狗在这个阴雨天依旧在晾晒自己的窝，还算幸运这次狗狗晒窝没有淋湿。</p><p>小时候我看到有些男同学和他爸爸像哥们、女同学和她妈妈像姐妹，我非常羡慕那些家庭，心里不知想过多少次，如果我爸爸也像同学的爸爸那样该多好。而我和父亲一看就知道这是父子，因我从小都是父亲说向西我绝不敢朝东边看，父亲手里的皮带可是时刻准备着。</p><p>以前村里有个天生智力障碍的半哑女人，源自残障因素别人无法和她有具体的交往，对于小孩子都不同程度很害怕她，村里很多人都有借助这个女人来吓唬不听话的孩子。我童年时也一样，父母都说我是捡来的，亲妈就是那个智障女人。因为父母需要在那块田里干活，那块田就在智障女人家门口，我远远的看着那个女人自言自语发出的声音很害怕想逃跑回家，可田里的活爸爸妈妈还没有干完，有时我会由于这个原因闹情绪，妈妈说再不听话就把我送回去，我一听说要把我送到那个可怕女人那里去就非常恐惧，更加不安静的哭闹，直到最后妈妈说了实话说我就是亲生的，此刻早已不是单纯害怕有那样的亲妈的问题，我一直都内心非常惧怕那个女人，连智障女人所在位置都是偶尔壮胆后才敢偷偷的看一眼那个方向，我因恐惧哭闹的更凶了。爸爸见我那个样子，从来没有说像那些哥们级别的父亲那样，抱一抱安慰一下，只是说：“没出息，那有什么可怕的。再不听话我过来就是一顿好打。”父亲都是那样，说我没出息时从来不笑，小时候我好像极少看到过父亲笑，一直属于非常严肃的表情。</p><p>过了几年，我长大了一些，再也不怕那个有智力障碍的女人。弟弟开始懂事了，过去爸爸妈妈吓唬我说自己亲妈是那个智障女人，现在轮到了弟弟，我也加入吓唬弟弟的阵营，爸爸妈妈和我三个人一起吓唬弟弟。俗话说子不嫌母丑，也可能是弟弟胆子比我略微大一些，就这样你我他说的次数多了，弟弟竟然当真了，这天下午，弟弟一直很纠结，在是否回到亲妈身边想了一下午，回去吧可那样的亲妈似乎有些面子过不去，不回去吧毕竟是亲妈啊，直到晚上我们才知道，弟弟那天下午一直在慎重思考是否回到亲妈身边这个严肃问题。</p><p>我观察发现可能其他很多人小时候，都有不同程度的羡慕别的家庭，总是觉得自己的父母没有别人的父母好，就跟很多狗狗总是羡慕其他狗狗的主人很好一样。</p><p>当我看到有个同学犯错误以后，被爸爸拿着扁担追着打的时候，我想到了其实父亲是从来没有那么粗鲁的对待过自己，爸爸说过打我时都是有注意分寸的，对比过才发现自己的父母还是最好的，因此谁也别想冒充我的父母。</p><p>（注：非常遗憾的事情是，就在写这篇文章之后两三天，小狗就突然感染了犬瘟热，于2018年1月15日去世了，就是文章结尾这只狗狗，这只狗狗只和我呆了整整11个月时间。）</p>",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ]
        },
        {
          id: 2,
          title: "让人落泪的流浪狗故事，他们生活的无奈和艰辛，震撼了铁石心肠！",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            "<p>断了两只腿的流浪狗妈妈，靠着剩下的只前腿，艰难地觅食来喂养它的四个孩子。因为它知道，如果自己外出觅食，孩子们一定饿死。狗妈妈靠着坚韧的毅力，两条腿艰难地行走，做出让人感叹不已的事情。母爰是伟大的，在狗的世界里也是一样！</p><p>这只流浪狗因为害怕出来被打，小狗躲在墙洞里三年不敢出来。据了解，在这狗狗很小的时候，跟着狗妈妈一起流浪。它眼睁睁地自己的妈妈被人活活打死，由于受到严重的惊吓，从比躲进墙洞不敢出来。只是偶尔出来活动一下身子。它的食物都是附近的好心人送给他的，一送就是三年。毕竟这世上还是好人多。</p><p>一名男子看到一只瘦瘦的流浪狗，流浪狗也目不转睛的看着他，就给了它一个鸡腿，本以为它会立即狼吞虎咽地啃完，没曾想狗狗叼起鸡腿转身就跑。出于好奇男人跟着狗狗穿过大街、市场??最后来到一个烂尾房，原来这里有流浪狗的几个孩子。小狗们看到妈妈嘴里的鸡腿马上跑了上来，妈妈只是在旁边静静地看着，其实狗妈妈也饿得不行，但是它知道，它吃了，孩子就没吃的了。深受感动的男子将手中的食物全部留给了狗狗。</p><p>每一只流浪狗都有它的故事，看着这些图片，即使你不是喜欢动物的人，也会蹦出怜悯之心。其实这个世界可以很温暖的，只要我们共同努力！</p>"
        },
        {
          id: 3,
          title: "一个真实的养狗狗小故事，有兴趣的来看看吧",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            '<p>吉尔查德在过去16年里一直从事导盲犬的寄养工作，这段时间她每年都会代养一只幼犬。目前她养的幼犬叫凯西，是一只黄色拉布拉多母犬。“我曾经寄养过拉布拉多猎犬、金毛猎犬、拉布拉多和普通猎犬的杂交犬，以及直毛犬和猎犬的杂交犬，老实说，每一只犬都有所不同。当然同一品种的犬都会有某些共同特征，但我体会更深的是每只犬都极具个性。"拉布拉多和普通猎犬的杂交犬是优秀、健康的犬种。我喜欢养直毛犬和猎犬的杂交犬，从外形看它像是直毛犬，但我觉得金毛猎犬的血统让它显得更沉静。“别人告诉我训练公犬要比训练母犬难得多，但我不这么认为。事实上，这么多年我最喜欢的两只犬都是雄性金毛猎犬。</p><p>我发现有些公犬的确很难对付,但母犬会带来其他麻烦。"吉尔现在的寄养经验十分丰富，她说这有助于她及早发现问题并解决问题。“我最早养过一只叫约克的拉布拉多公犬，它很令人头疼。进入青春期后，它的性格变得十分叛逆，经占有/护卫欲：如果犬对某种玩具特别在意，你、要想从它那儿拿走这个玩具，它就会冲你吼叫。你的犬也许会护卫许多东西，包括它的床和犬窝，要是你靠得太近，它就会警告你离开。</p><p>或许它对食物看得很紧，要是在它吃东西的时候打扰它，它准会冲你叫。常有过分的要求。我在洗餐具的时候，它会突然扑向我，朝我叫唤。它从不对我的丈夫约翰这样，却觉得可以在我身上试试。”在培训师的帮助下，吉尔开始下功夫改变约克。“我们得严格要求它，利用有力而果断的肢体语言让它明白谁是主人。我们采取了一些措施来降低它的地位。比方说，给它喂食之前，我会坐到犬床上，假装吃它碗里的东西。那些曰子我显得很幼稚，的确是觉得很困难。但你得学习犬的思维方式，从它的角度来看这个世界。归根到底，你是在利用你的常识而已。”后来约克改掉了它强烈的支配欲，成长为一只合格的导盲犬。吉尔最近正在处理一只6个月大的母犬凯西的青春期问题。“还没到第一个发情期，它的荷尔蒙就开始旺盛地分泌了。</p><p>它很容易兴奋，我们出去散步的时候，它总爱往路人身上扑。以前它可以应付自如的场合，现在却让它感到惊慌。今天我带它出去，试着让它走上火车站的几级台阶。台阶在室外，处在一个露天的环境，而这个场景在几个月前是完全不会使它紧张的。“它显得十分慌乱，于是我决定明天和丈夫一起过来，为她设立一个训好斗：.在某些情况下，它会攻击其他的犬，有时还会攻击人，尽管这种情况很少。如果犬真的对人发出了攻击，你必须立刻去经验丰富的驯犬师或有名的行为学者那里取取经。攻击人的犬会惹大麻烦的，你要负起责任，及时请专家帮忙。"凯西喜欢和我们一起走，我就牵着它走在我丈夫后面。我丈夫走上最高一级台阶后，叫凯西的名字。我们手里都拿着些吃的，凯西往台阶上走的时候，我们就可以奖励它，这样一直鼓励它走到最高一级。如果我们坚持这样训练，它很快就会适应。</p><p>它的紧张感是由青春期暂时性挫折感引起的。”吉尔还发现她养过的一些幼犬在青春期会经历一个"撞墙”阶段，即满屋子疯跑。"这是一种出于过度兴奋和渴望关注的混合情绪，”吉尔说。“一发生这种情况，我就抓住它，把它放在屋外，让它在外面呆上5分钟。你若对它置之不理，它就会明白用疯跑来寻求关注是行不通的。5分钟后，我再让它进屋，然后表扬一下它的沉着安静。”吉尔发现母犬在度过第一个发情期后会安静很多。“尽管经常能看到幼犬取得进步，我却不能连续进行驯养了，因为到那个时候，幼犬们就要被送去训练了。”吉尔养的大部分幼犬成了合格的导盲犬，但难免也有不成功的例子。</p><p>“到最后的时候，你与幼犬一起合作，接受测试；出现问题的时候，有时可以解决，有时解决不了。在带它们散步的途中，有的幼犬会因其他犬而分散注意力，外出散步时，有时会过度兴奋。这在宠物犬身上可能只是小毛病，在导盲犬身上却是不能接受的。”吉尔曾经也想尝试驯养一只没有经过训练的成年犬，后来她还是决定把精力都集中在训练幼犬上。“每一只犬都会带来不同的麻烦，需要不断研究幼犬训练和行为的每一个方面。我觉得这项工作很有挑战性，很有价值。没有绝对完美的幼犬假如所有犬都一样，没有什么需要改进的地方，也就毫无乐趣了。</p>'
        },
        {
          id: 4,
          title: "对养狗的人讲个故事",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            "<p>有一次，带家里的狗看医生，坐上一辆计程车。</p><p>“是呀！从昨晚就咳个不停。”我说。</p><p>司机突然长叹一声：“唉！咳得和人一模一样呀！”</p><p>话匣子于一打开，司机说了一个养狗的痛苦经验：</p><p>很多年前，他养了一条大狼狗，长得太大了，食量非常惊人，加上吠声奇大，吵得人不能安宁，有一天觉得负担太重，不想养了。他把狼狗放在布袋里，载出去放生，为了怕它跑回家，特地开车开了一百多公里，放到中部的深山。放了狗，他加速逃回家，狼狗在后面追了几公里就消失了。</p><p>经过一个星期，一天半夜听到有人用力敲门，开门一看，原来是那只大狼狗回来了，形容枯槁，极为狼狈，显然是经过长时间的奔跑和寻找。计程车司机虽然十分讶异，但是他二话不说，又从家里拿出布袋，把狼狗装入布袋，再次带去放生，这一次，他从北宜公路狂奔到宜兰，一路听到狼狗低声号哭的声音。</p><p>到宜兰山区，把布袋打开，发现满布袋都是血，血，还继续从狼狗的嘴角流溢出来。他把狗嘴拉开，发现狼狗的舌头断成两截。原来，狼狗咬舌自尽了。</p><p>司机说完这个故事，车里陷入极深的静默，我从照后镜里看到司机那通红的眼睛。经过一会儿，他才说：“我每次看到别人的狗，都会想到我那一只咬舌自尽的狗，这件事会使我痛苦一辈子，我真不是人呀！我比一只狗还不如呀！”</p><p>听着司机的故事，我眼前浮现那只狼狗在原野、在高山、在城镇、在荒郊奔驰的景象，它为了回家寻找主人，奔跑百里，不知经历过多么大的痛苦，好不容易回到家门，主人不但不开门，连一句安慰的话也没有，立刻被送去抛弃，对一只有志气有感情的狗是多么大的打击呀！与其再度被无情无义的人抛弃，不如自求解脱。</p><p>司机说，他把狼狗厚葬，时常去烧香祭拜，也难以消除内心的愧悔，所以他发愿，要常对养狗的人讲这个故事，劝大家要爱家中的狗，希望这可以消去他的一些罪业……</p><p>唉！在人世间有情有义的人受到无情的背弃不也是这样吗？</p>"
        },
        {
          id: 5,
          title: "养狗故事 真实小故事",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            "<p>女主人挺着个大肚子还下地干粗重的活，因为男主人在县城工作，每个月才回来一次。女主人只能自己照顾自己，同时还不能扔了地里的活。女主人很善良，虽然自己也没有什么好东西补养什么，但是从不让小黑饿着。 </p><p>三个月过去了，农历四月份，小黑已经长成一条半大的狗了。他身上的毛已经变成黑白相间的漂亮大花了。女主人生了一个小嫚。这让重男轻女的婆婆很不高兴，但是小黑很高兴。他整天围着女主人转来转去，希望能有机会舔一下那个小小的人儿。不过女主人自己抱着那个小人儿都小心翼翼的，更加不会让别人碰碰了。于是小黑就常常安静的趴在炕旮旯里，巴巴儿的望着炕上。其实他已经很有力气了，跳到炕上对他来讲简直不费力气，但是他不会这么做，他连炕沿都不会靠近，因为他知道主人会不高兴。 </p><p>那个小人儿哭了，女主人手忙脚乱的给那个小人儿换尿布。小黑兴奋的站起来，他知道要为主人做什么。一片带着那个小人儿排泄物的尿布扔下来了，小黑赶忙上去舔干净。很恶心吧？不要笑，以前农村的孩子都是这么养活，都很健康。</p><p>转眼到了夏天，小黑六个月了，已经长成一条雄健的大狗了，虽然还带着一些稚气，但毛色光亮，威风凛凛，很是英俊。这是一只少年老成的狗，自从有了那个名叫小燕儿的小主人，小黑就不再玩那种扑人的裤腿儿的游戏了。他觉得自己是一个守护神了，每天忠实地守护在小主人身边。 </p><p>因为是个女孩的缘故，奶奶对小燕儿并不喜欢，总找借口不愿看她。无奈女主人只能带着小燕儿下地干活。女主人挑着扁担，扁担前面的箩筐里躺着小女孩，后面就挑着席子和小被子。 小黑就撒着欢儿跟着。 农历七月的天气已经很热了，女主人在地头找一个阴凉的地方儿铺上席子和被子，把小女孩放在上面，对小黑说：“好好看着啊，哪儿也不许去。”小黑就默默地趴在席子旁边，专注的看着那个小孩。其实这个小孩长的并不好看，黝黑的脸蛋，稀稀拉拉的几根头发，勉强不丑罢了。不过小黑不知道什么是美丑，他只知道这是他应该守护的人。他歪着脑袋用黑亮的眼睛看着小燕儿咿咿呀呀的挥舞着手脚，或者吧唧吧唧的吃手指头，要不就呼呼大睡，感到心满意足。 </p><p>其实女主人是不太放心的，她干一会活就要把小燕儿跟着往前挪挪，还时不时地回头看看小黑还在不在，又站起来侧耳听听小燕儿是不是哭了，每个一段时间给小燕儿喂奶的时候都把小燕儿的衣服被子仔细的看看，生怕上面有什么蚂蚁虫子之类的，不过女主人从来没找到过。小黑早把那些蚂蚁、虫子还有蚂蚱什么的捉的捉，撵的撵，消灭光了。女主人越来越放心了，常常来到地头，放下女儿就干活去了。等听到小黑连续大叫，就知道女儿饿了，该喂奶了。 </p><p>小燕儿能自己翻身了，她开始尝试着伸手去抓东西，于是小黑的嘴巴，鼻子，耳朵就常常成为她的目标。不过她一般是抓不到的，往往她还没有爬到小黑面前，她细细的小胳膊就支撑不住了，一下摔个嘴啃泥。但是总是不成功让这个小人儿很有挫折感，于是她小嘴儿一咧，哭开了。小黑急忙站起来，用舌头舔舔她的额头。这小人儿马上不哭了，一屁股坐下，拿小巴掌一下下拍着小黑的脑袋，高兴了。</p><p>燕儿的奶奶不知怎么想的，突然主动要求照看小燕儿。女主人自然是很高兴，虽然小黑能够照看小燕儿，但它毕竟只是条狗，不会说话。于是她把小燕儿交给了奶奶。</p><p>小黑不必照看小燕儿了，不过他立马有了新的任务--为小燕儿找食物。小燕儿已经6个月了，虽然奶水充足，还是细胳膊细腿的。常吃完奶没一会儿就饿的大哭，因为家里头实在没有东西可给她吃。那时刚刚开始大包干，谁家里都穷的叮当响，哪有钱去给她买营养品呢？</p><p>无奈之下，男主人想出了一个好办法。他是民兵，手中有土枪，而且枪法很准，他决定去打猎。说干就干，男主人把枪里装上铁砂子，带上火药，天一擦黑就出门了。小黑似乎知道男主人要去干什么，紧紧地跟上。男主人正有意好好培养一下小黑，见他跟来，很高兴。 </p><p>经过了一个夏天的饱食，现在的野兔正肥。没有人教过小黑怎么做，就见他东嗅西嗅，一会儿就从草丛中撵起一只野兔来。小黑一会儿跳到野兔的左边，一会儿又跳到右边，野兔东窜西逃，一会儿就混了头，径直朝男主人跑过去。男主人拿手电筒照着野兔的眼睛，野兔傻了，停下，立起两条前腿儿，亮晶晶的眼睛直直的盯着手电的光。一声枪响过后，远远的躲在一旁的小黑如闪电般把受伤逃窜的野兔叼了回来。 </p><p>马上，小燕儿的爷爷，一个憨厚的老人就把野兔收拾了：兔皮贴在墙上晾干，兔肉炖得稀烂，给小燕儿送来了。那真是一个温馨的场面啊——小燕儿坐在女主人的腿上，大口大口吃着妈妈嚼的兔肉，吃的高兴的时候就咧着长了几颗牙的小嘴儿笑；女主人一边擦着小燕儿嘴上的油，一边轻声细语的说：“慢慢吃啊，看把咱闺女咔哒的。”男主人笑着抚摸着趴在旁边摇尾巴的小黑，有些得意的对女主人说：“你说这个小黑，还真是怪，我也没教他怎么轰野兔，他怎么就知道呢？他还知道在我瞄准的时候躲开，你说谁教的？咱以前养那么些狗，都加起来也比不上小黑。嘿嘿！”</p><p>很快，打猎就成了小黑最大的爱好。不论何时，哪怕他正在田野里撒欢奔跑，只要男主人在家一拿起枪，他就能准确的感知到，及时地出现在男主人面前。有时候，男主人和村里人合伙去打猎，怕人多枪杂，不小心伤到小黑，就喝令小黑在家看家，这样的命令可真是让小黑无比的沮丧，他委曲的哼着，眼巴巴地看着主人走了。可是男主人走在半路上总觉得小黑跟在身后，回头一看，小黑果然闷声不响的在后面跟着，见主人发现了自己，小黑停下了，拿眼睛盯着主人，无声的恳求着，同时又害怕主人生气，不住的摇着尾巴向主人撒娇。主人喝令小黑回家去，小黑往后退了两步又站住了，看着主人。主人佯作生气，赶上两步举起手来，作势要打，小黑古堆儿一下趴在地上，往前爬两步，用头蹭主人的鞋子和裤腿儿。大家都憋不住的笑了，为小黑求情。主人也笑了，说：“走吧。”小黑一蹦而起，兴奋的摇头晃脑，一窜一跳的在前面带路。这大概是小黑唯一任性的时候。有几次，女主人把小黑关在家里，让男主人偷偷走了，可是聪明的小黑越墙而出，还是在半路上追上了男主人。如是三番之后，主人们明白再怎么阻拦也是徒劳，于是就听之任之了。不过，有小黑在，大家总能多打到猎物，所以大家都是很喜欢小黑。不用说，主人得到的是最多的。</p>"
        },
        {
          id: 6,
          title: "我的导路犬",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            "<p>一直以为我家狗儿是路痴+嗅觉失灵，所以从来都没敢放手让它独自外出，经常远远的走来它也认不出是自己家人。它最爱搭车，但是在车里也不会老实的待着，只有打开车窗把它举着让它吹吹风，满足下它那好奇的小心脏才会安静下来。平时车停在家楼下固定的车位上，在它拉完粑粑经过时会站起来闻下自己的车，但是有一次我开着车从它旁边经过，它居然没反应，完全没认出我和车。昨晚车子停在了单位车库，在出门时候我和妈妈轻轻说了句等下去单位把车开回家，然后我们就按平常的路线在家附近散步，走到路口时小狗子很自觉地把我拉到斑马线，往单位方向走，我们一路跟着它，它很急，一路急跑。进了车库，它一直在找我们的车，从左找到右，就在我们都以为它又找不到的时候它在自家的车子前站着。我满心欢喜，从过马路到车库都是它带路，突然觉得4岁的它长大了，一直把它捧在手心里，遇到不明路况都把它抱在怀里，它也总能带给家人欢乐，如果4年前没有选择它，我们必然失去很多快乐和笑声。 </p>"
        },
        {
          id: 7,
          title: "超级狗狗:小可爱拉布拉多犬",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            "<p>我的小可爱拉布拉多犬是一个非常有礼貌的绅士。他啊有一点点调皮。跟我弟弟差不多。但相差实在是太大了，他的智商都比我弟高啦。</p><p>我的小可爱拉布拉多犬是一个非常有礼貌的绅士。他啊有一点点调皮。跟我弟弟差不多。但相差实在是太大了，他的智商都比我弟高啦。</p>"
        },
        {
          id: 8,
          title: "我的养狗故事（感人真实）",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            "<p>我出生在北方一个普通的农村家庭，我的父母是同一个村里的。我的父亲兄弟5个姊妹7个，所以造成一个现象，我奶奶的孙子孙女很多，自然都看是不现实的，刚好我的母亲姐妹4个，由于我母亲在本村自然看孩子的重任就交给了我姥姥【俺们这里都叫朗娘】，姥爷。主题来了；我的姥爷爱养狗。酷爱养狗，从我懵懵懂懂记事起，狗成了我童年少年到青年必不可少的朋友。我的姥爷从年轻就热玩，撒鱼养狗逮兔子。用我姥姥的话说就是打兔子摸虾耽误庄家。</p><p>我记忆中的头两条狗是我姥爷打兔子的专用狗，一条黑色的身材瘦长，皮毛增亮，我姥爷说他是个二流条【不纯串了】。另一条是我姥爷瞒着全家人骑自行车200多里路在茌平偷买回来的，【据说当时茌平有个专养优秀细狗的村，全省闻名】为此还生了一大场气，当时刚刚包产到户两年，我姥爷就用地里两年的收成找到一个茌平的朋友，住了两天买了一条狗回来。【那个朋友当时是个打铁的在我们村打铁就住在我姥爷家】。这条是个红色的，高大瘦长耳朵上两嘬长毛和小辫子似地。</p><p>当时的细狗和现在的差距很大，现在的大都傻乎乎的，我姥爷冬天里农闲时经常带着俩狗，扛上土枪背上书包叫上三五个好友出去打兔子。我和哥哥就在家盼着黑天，因为那时候兔子多，我姥爷每次出去就是一天，回来都能打到几只，晚上就吃兔子肉。那个年代吃肉是一件非常奢侈的事，除了过年平时根本吃不到，而我兄弟俩缺隔三差五的吃上一次。</p><p>我每次闹着和姥爷一起去他都不带，说我们跟不上他们。当时心里非常不服气。记忆里就是我姥爷，老奎大爷铁牛大爷三舅，再叫上一个挑扁担的，在我还没起床的时候就走了。姥爷的狗训导很好，趟出兔子来只要不让撵，都不动。放了枪喊声；斯斯。就一阵风似地跑上去。而且看家也很好，那时的房庄都是平顶的，屋里黑乎乎的【烧炕烧的】房顶上长着蒺藜秧，小时候光着脚经常被扎到，混乱道里【胡同】一有个风吹草动的，直接从鸡窝窜到房顶上去叫。姥姥常说好狗护四邻好汉护三庄。可那个时候村里从不丢东西，院子也没大门，顶多有个寨门，【木头棍订的】。</p><p>忘了我几岁的时候，黑狗死了。怎么死的忘了，姥爷又养了一条白狗，不知道什么品种，长到很大，比一般的大狼狗还要大不少，绝对一百斤以上，可是并不显笨重，名字叫；幺幺。【貌似白熊，现在家里还有照片，有空发上来吧友看看】姥姥在场院里养了几头猪，每次猪跑出来跑到地里去就冲这地里一指，幺幺就跑进去一会就把猪赶出来，一直赶到猪圈里。</p><p>我上小学了，终于在我死皮赖脸纠缠下姥爷终于答应第二天带我去打兔子，当时兴奋的晚上好长时间没睡着，第二天早上早早的起来，发现姥爷正在不慌不忙的抽烟袋。我说；老奎大爷他们真实的，还不过来。姥爷说，人家下地不来。；啊，那快走吧。其实姥爷当时根本没叫别人。于是我签上幺幺姥爷扛上枪带上红细狗，就出发了。【幺幺不能撒开，见了兔子傻追还追不到影响打枪】。</p><p>那是我第一次打猎，到现在依然记忆幽深。姥爷路上交代，见了兔子不要急，听到防抢就撒狗。我不屑的说知道了。我们这里是平原，即没有山也没有水，所以打兔子就在麦子地里，和果园子里找。【现在为了开发景点，弥补没山没水的不足，在城里用推土机推出了一个大号土堆上面种上树盖了个小亭子，名曰土山，推土山推出的大号坑放上水名曰双海湖，猫了个咪】牵着狗转了两个多小时，连个兔子毛也没看到，累的我够呛。我给姥爷说，咋没有啊，姥爷说有点耐心，领着你不敢到远处转，；咋的？；姥爷蔑视的说，；怕你到远处里，累的拉不动腿了。正说着，红狗突然冲一个草堆叫了一声，姥爷吧扛着的抢一下端平了，就在同一时间，一个兔子窜出来蹦蹦达达的跑了，屁股像上了弦的玩具一样在后面看一共一共的，关键时刻幺幺向前一冲追过去。。。。。</p><p>结果就眼看着兔子拐了俩急弯跑到没影了，幺幺垂头丧气的回来了。我心急火燎的说；姥爷你咋不打啊？姥爷说；你不把狗拉住咋打啊，打找狗曾着啊。我无语了，都怪当时一晃晃。</p><p>又走了3里多路，我的腿有点酸了，在地里走不同于在路上，正当我泄气的时候姥爷那边【我俩离着二三十米】又起来一个，眼看着兔子屁股一撅一撅的又跑了姥爷连枪都没端。手里这次把狗绳抓的紧紧的，我气急败坏的冲我姥爷嚷；又咋了？姥爷不慌不忙的点上一袋烟说；就你这熊态地，还打兔子里。；我又咋了？你没见满，那个是小得，还没2斤里。 我了个去，当时我憋了一肚子气。</p><p>在我想要打道回府地时候，姥爷像我摆了摆手，看着他那小心翼翼的模样，我轻手轻脚的牵着狗过去了，姥爷说；我看见一个鄂子</p><p>鄂子的意思我解释下，兔子在往草窝里爬的时候，会用脚登土后蹬前抛把地上刨个浅坑再趴里面，趴下后趴的位置有一小堆湿土，那就叫鄂子。</p><p>我顺着方向看了半天，郁闷了，嘛也没看见。老爷说你和幺转到后面用棍子匝地去，我连忙照着说的转到后头找了个棍子用力砸。砸了两下就听到姥爷的枪响了，我赶紧把够撒开，幺幺跑了过去，那个兔子其实已经被抢打死了，还在瞪大就在同时我姥爷充着大红喊了声；斯斯。大红噌的窜出去，我一看原来那个草丛里还有一只正撒丫跑里，狗和兔子一前一后一会就没影了。这个时候幺幺叼着兔子摇头摆尾的回来了，姥爷往远处瞅了瞅，接过兔子直奔大红的方向走去，我怀着激动地心情跟着。到了一个村子边上姥爷问一个下地的娘们；你看见一个红衫地细狗来吗？娘们说；见来，围着庄跑了两圈了。</p><p>正说着话就看见大红在远处跑，前头是那个兔子，明显的都累了。眼看就赶上了那兔子一个急转弯又跑了，如此这般好几次，终于吊住了。我姥爷喊了一声，大红脑袋一部冷叼着兔子跑过来，我姥爷接过兔子拍了拍大红。连狗加人坐下休息。</p><p>我说，这兔崽子跑的真快里。姥爷想了想说；这是个老兔子了，要是二流条活着，它俩早把他逮住了。一只狗带年把的还行像这个起码3年了。说着拿出小刀把兔子肚皮一划，肠子给了大红，幺幺一看也往这里拱，老爷说；急吗呀吃大将</p><p>到了家邀了邀俩兔子8斤多还不带肠子。把我累坏了，兔子肉煮好了，我和我哥着急忙活的把手在盆子里一涮，就奔肉去了，大家不要笑话，那时候吃的顶到嗓子眼了，腰都弯不下。我姥姥吓得不轻问我；小没事吧？我说没事榔娘扶我躺下歇歇。</p><p>终归是年龄小，那天晚上累得我说梦话，梦里光看见兔子腚一撅一撅的跑。</p><p>又过了两年，一天放了学姥爷说；小咱滴狗没了。；啥，我大吃一惊，这根本就是不可能的事，仔细一想；可不白早上上学时大红没送我走。当时脑子里乱了，姥爷说；准是叫那帮表贼给逮起了。当时外边来了一帮人说是打狗的，在我们那里打死了不少够，第二天就都跑了。我姥爷的大红四里八村都认得。想到这里，我的心里顿时起了一个大疙瘩，饭我也不吃了，走到里间屋里抱着幺幺沉默，过了一会我姥爷过来红着眼说小别想了，往后我再给你要个小细狗，也要红的。听到这里我哇的一声大哭起来。想着从我记事开始大红就陪着我，我哭得死去活来。【对不起了，眼泪又下来了】姥爷说，；小我心里也是疼的慌，曾召里。</p><p>就这样我没有来得及做任何准备，任何告别。连一张照片都没留下，就永远的离我而去了。后来收土枪，姥爷毫不犹豫的把三条土枪都上交了，直到现在姥爷真的老了，再也没有养到红色的细狗。</p>"
        },
        {
          id: 9,
          title: "第一次养狗就有了这样的经历，这辈子都再不会养狗了！",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            "<p>之前经常看到大家喂养各种宠物的画面都太有爱，看的自己都很心动，于是有朋友就鼓励我也可以养一只试一试，我之前也没有过养宠物的经验，也不知道那种好，就觉得狗狗还不错，听话还忠诚，于是就养了一只狗，但是这也成了我噩梦的开始。</p><p>在买狗的时候，我并不知道那种狗的品种比较好，只是看着那种好看便买了一只，买了之后朋友给我说我买的是哈士奇，这种狗很能这趟，一不小心就会将家里面弄的一团糟，她说完之后我也没有太在意，因为养了小动物肯定会有些调皮，这是在所难免的。</p><p>但是，当我亲身体验了之后才知道有多恐怖，它将家里凡是能懂的东西全都更会去肆意的破坏了，于是家里的纸张被撕的满地都是，桌子也被它啃的有了不少缺口，咬完之后还在家里各种的嚎叫，完全是没有办法。</p><p>这次只是去做饭的一会功夫，它九江柜子里面的一幅又叼了出来扔在地上，沙发的抱枕被咬的里面的丝绵全部都出来了，满屋子都是这些碎小的垃圾。</p><p>在将家里搞的在不能狼藉之后，它竟然还很悠闲的又躺在了地板上。连一点在做错事的自觉都没有，真的是好失望。</p>"
        },
        {
          id: 10,
          title: "养小狗的经历",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            "<p>我小的时候养了一只小狗它叫飞飞。因为我们家住进了楼房，不能养了，就把它养在我的太姥姥家。有时我很想它，也有时会忘了它。有时我会到太姥姥家去看看它。每一次去看它，它会汪汪的叫个不停，我去哪儿它就会跟去哪儿。在我玩的开心的时候它会汪汪汪的叫，我很喜欢它。</p><p>有一次它玩的跑丢了，我很担心它会不会作文https://Www.ZuoWEn8.Com/出事。我听别人说：“已经有人在养它了，这下我就放心了。”可是有一天我又听别人说：“飞飞被那个人关在笼里了。”我听了后真想对那个人说：“它不可以关在笼子里，它会蒙死的。”可是已经晚了。</p><p>飞飞是我的好朋友，它很可爱，它是我的第一只小狗，我很喜欢它，很喜欢很喜欢……但是我却失去了它，我很伤心。</p>"
        },
        {
          id: 11,
          title: "养狗的人，感受到过的最温暖的瞬间",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            "<p>狗是最通人情的动物，这是几乎是公认的观点。朋友圈里有很多养狗的人，他们经常分享那些与狗狗一起温馨满满的瞬间，让人不禁觉得，自从有了狗狗以后，即使是一个人的日子，都不会觉得孤独。</p><p>1.失眠的夜晚。楼主家里最近借养了一只狗狗，自从它来了以后，失眠的夜晚变得一点都不难熬。昨天晚上照例失眠，所以特别想知道狗狗在干嘛，远远地听见它轻轻的鼾声，觉得很满足。我忍不住轻轻叫了它几声，不一会，只见它打着哈欠，抻着懒腰，溜溜地跑到了我床前，睡眼惺忪地舔我的手。直到我躺在床上，它也乖乖地躺在了我的床边。当我不出声了以后，它又悄溜溜地回到了自己的窝里，打起鼾来，那种感觉尤其像是一个母亲，在哄自己睡不着的孩子。瞬间觉得爱意满满，非常温暖。</p><p>2.一推开家门。家中有了狗狗以后，每天都急着回家，一方面想知道狗狗好不好，另一方面也想知道它是不是很不乖，又在家里撒尿。每次一推开家门，它都会摇着尾巴出来，特别兴奋地哈着气，然后在一边跳，我一凑过去就会舔我的手，那种感觉就像是在说，欢迎回家，我等你很久了。不禁让人觉得，一个人的出租屋，也并没有那么冷清和孤独。</p><p>3.不开心的时候。只身在外，最怕的就是遇见不开心的事，或者是生病，那种苦闷的情绪似乎没有办法通过电话传达给爱的人，也没有办法得到需要的关注与关心。但家中有狗狗的时候，一旦你病了、不开心了，它似乎都能第一时间感觉到，它会缩在你的腿边，安安静静地舔你的手，睁着水汪汪的眼睛看着你。那一瞬间会让人觉得，那些病痛也好，烦闷的情绪也好，都得到了疏解和体谅。这个世界上，永远有一只狗狗，它能够懂你，并时刻给予你陪伴。</p><p>难怪说很多人不敢养狗，声称它离开的那一天，自己一定受不了。如今想来，如果我有这样一只狗，恐怕也会有一样的心情和体会吧。还好我的狗是借来的，我会与它历经生离，但总好过死别。各位小主们也有过养狗的经历吗？你是否也感受过这些温情满满的瞬间，那些留在你记忆深处的感动，分享出来，让我们看见吧～</p>"
        },
        {
          id: 12,
          title: "我第一次养狗的经历感受",
          author: "小爱",
          from: "狗狗网",
          time: "2020-4-18",
          comment: [
            {
              id: 0,
              content: "很感人",
              name: "路过的人",
              time: "2020-4-10 18:00"
            }
          ],
          content:
            "<p>我十几岁家里养了条大狼狗，因为属于超级串串，毛色不是很纯，是黑白相间的，个头非常大。我给他起名小黑</p><p>没地方放养，只能养在楼顶。偌大的楼顶只有他一只生命，陪伴他的只有搭着破瓦的棚子跟缺了口的铁钵子。每次我出门，就听到它孤单的哀嚎，那种很伤心的声音就像一个妈妈抛弃的孩子，让人舍不得离他而去；每次我回家，还走在巷子口，就听到他在楼顶激动的嚎着，然后听着链子的声音从那头拖到这头，直到我上楼；每次我拿到钥匙上去看它，都不忍心它幽怨的眼神，知道它喜欢自由，都会给它解锁，每次它一脱开狗绳，就飞奔到楼下撒欢，那时候我觉得我是那么的神圣，有给一只生命自由的权利。</p><p>那是一段幸福快乐的日子。</p><p>但是他的野性太足了，养得太大了，栓不住了，很快就出了问题。每次冲下去都会咬一次人，每次都要赔钱给别人。于是爸爸带着小黑准备想出去扔了的，但是这狗灵性大，每次都隔了两三天自己跑回来了，饿得饥肠辘辘，在外面他都不吃狗贩子的下了药的牛肉，宁可吃我家里的白米饭。（这是后来我从小卖部的爷爷那里听到的，那爷爷也早就走了555...）如此这般两三次，亲戚们就商量着要把它杀了吃。我不小心偷听到后，极力阻止家人这么做。但是我太小了，家人完全不听我的，后来妈妈骗我说给蓝豹打狂犬育苗，说这样就不怕他咬人了。但是天真的我待在家里，等到几分钟后我反应过来了，因为是我妈妈带狗狗出去了，而我爸爸出奇的守在我的旁边，不让我跟着去！</p><p>再等我强烈要求爸爸带我出去后一个多小时，我可怜的小黑，待我发现他的时候，只看到他的头连着他的皮被散放在餐馆的垃圾堆旁，而我却看见餐馆里不知道的人一大堆，都捧着碗吃着什么。。。。。。</p><p>那很长一段时间我没理家里人，觉得非常恨。</p><p>偶尔看到人谈起自己第一次养宠物的经历，勾起了我伤心的往事，权且写出来祭奠祭奠。</p>"
        }
      ]
    };
  },
  methods: {
    open2() {
      this.$message({
        message: "分享成功~~",
        type: "success",
        showClose: true
      });
    },
    showAllContent(id) {
      this.$refs[id][0].classList.remove("card-content2");
      this.$refs[id][0].classList.add("card-content");
    },
    showLittleContent(id) {
      this.$refs[id][0].classList.remove("card-content");
      this.$refs[id][0].classList.add("card-content2");
    },
    showRecommend() {
      this.$refs.recommend.$el.classList.add("choose-link");
      this.$refs.attention.$el.classList.remove("choose-link");
      this.$refs.hot.$el.classList.remove("choose-link");
      this.recommendVisable = true;
      this.attentionVisable = false;
      this.hotOneVisable = false;
    },
    showAttention() {
      this.$refs.recommend.$el.classList.remove("choose-link");
      this.$refs.attention.$el.classList.add("choose-link");
      this.$refs.hot.$el.classList.remove("choose-link");
      this.recommendVisable = false;
      this.attentionVisable = true;
      this.hotOneVisable = false;
    },
    showHotOne() {
      this.$refs.recommend.$el.classList.remove("choose-link");
      this.$refs.attention.$el.classList.remove("choose-link");
      this.$refs.hot.$el.classList.add("choose-link");
      this.recommendVisable = false;
      this.attentionVisable = false;
      this.hotOneVisable = true;
    },
    handleClose(tag) {
      this.dynamicTags.splice(this.dynamicTags.indexOf(tag), 1);
    },

    showInput() {
      this.inputVisible = true;
      this.$nextTick(_ => {
        this.$refs.saveTagInput.$refs.input.focus();
      });
    },

    handleInputConfirm() {
      let inputValue = this.inputValue;
      if (inputValue) {
        this.dynamicTags.push(inputValue);
      }
      this.inputVisible = false;
      this.inputValue = "";
    },
    showSuccess() {
      this.writeTextVisible = false;
      this.writeThinkVisible = false;
      this.writeBatVisible = false;

      this.textForm.name = "";
      this.textForm.region = "";
      this.textForm.delivery = false;
      this.textForm.desc = "";

      this.thinkForm.desc = "";
      this.thinkForm.delivery = false;

      this.batForm.desc = "";

      this.$message({
        showClose: true,
        message: "书写成功~~",
        type: "success"
      });
    },
    askPeople() {
      this.askPeopleVisible = false;
      this.askForm.name = "";
      this.askForm.delivery = true;
      this.askForm.desc = "";
      this.$message({
        showClose: true,
        message: "提问成功~~",
        type: "success"
      });
    },
    report() {
      this.ReportVisible = false;
      this.$message({
        showClose: true,
        message: "举报成功!!",
        type: "warning"
      });
    },
    showComment(id) {
      this.$refs["comment" + id][0].classList.remove("comment");
      this.$refs["comment" + id][0].classList.add("show-comment");
    },
    closeComment(id) {
      this.$refs["comment" + id][0].classList.remove("show-comment");
      this.$refs["comment" + id][0].classList.add("comment");
    },
    publish(id) {
      if (this.input != "") {
        let publish = {
          id: Math.ceil(Math.random() * 100),
          name: "测试人员",
          content: this.input,
          time: this.getNowFormatDate2()
        };
        this.recommendedContent[id].comment.push(publish);
        this.input = "";
      } else {
        this.$message({
          showClose: true,
          message: "不能发表空内容哦！！",
          type: "error"
        });
      }
    },
    getNowFormatDate2() {
      //获取时间
      var date = new Date();
      var seperator1 = "-";
      var seperator2 = ":";
      //外国的月份都是从0开始的，所以+1
      var month = date.getMonth() + 1;
      var strDate = date.getDate();
      //1-9月用0补位
      if (month >= 1 && month <= 9) {
        month = "0" + month;
      }
      //1-9日用0补位
      if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
      }
      //获取当前时间 yyyy-MM-dd HH:mm:ss
      var currentdate =
        date.getFullYear() +
        seperator1 +
        month +
        seperator1 +
        strDate +
        " " +
        date.getHours() +
        seperator2 +
        date.getMinutes() +
        seperator2 +
        date.getSeconds();
      return currentdate;
    }
  }
};
</script>

<style scoped>
.el-tag + .el-tag {
  margin-left: 10px;
}
.button-new-tag {
  margin-left: 10px;
  height: 32px;
  line-height: 30px;
  padding-top: 0;
  padding-bottom: 0;
}
.input-new-tag {
  width: 90px;
  margin-left: 10px;
  vertical-align: bottom;
}
body {
  background: #f6f6f6;
}
.chat-container /deep/ .chat-main {
  padding: 0;
  padding-top: 20px;
}
.chat-container /deep/ .el-card {
  width: 98%;
}
.chat-main /deep/ .chat-link {
  font-size: 18px;
  margin-right: 40px;
}
.chat-main /deep/ .choose-link {
  color: #0984e3 !important;
}
.card-title {
  font-size: 18px;
  font-weight: bold;
}
.card-content {
  margin-top: 6px;
  font-size: 15px;
  text-indent: 2em;
}
.card-content /deep/ .show-littlebtn {
  border: 0;
}
.card-content2 {
  margin-top: 6px;
  font-size: 15px;
  height: 40px;
  overflow: hidden;
  text-indent: 2em;
}
.card-bottom {
  display: flex;
  justify-content: space-between;
  margin-top: 15px;
}
.card-bottom /deep/ .el-button {
  border: 0;
  padding: 8px 12px;
  font-size: 15px;
}
.iconqq,
.iconwechat,
.iconxinlangweibo {
  font-size: 10px;
}
.attention {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  color: #8590a6;
}
.attention-icon {
  text-align: center;
  width: 100%;
  font-size: 70px;
}
.chat-right {
  display: flex;
  justify-content: flex-end;
  flex-wrap: wrap;
}

.publish {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  cursor: pointer;
  transition: 0.5s;
}

.publish:hover {
  transform: translateY(-5px);
  color: #0984e3;
}
.publish-span {
  text-align: center;
  display: block;
}
.publish /deep/ .publish-icon {
  color: #8590a6;
  margin-bottom: 6px;
  text-align: center;
  width: 100%;
  font-size: 20px;
  display: block;
}
.publish-line2 {
  margin-top: 20px;
}
.about-mine {
  margin-top: 10px;
}
.about-mine-content {
  cursor: pointer;
  color: #8590a6;
  height: 40px;
  display: flex;
  justify-content: space-between;
  padding: 0 5px;
  align-items: center;
  font-size: 14px;
  transition: 0.5s;
}
.about-mine-content span {
  margin-left: 5px;
}
.about-mine-content:hover {
  background: #dfe6e9;
}
.one-wait-see {
  font-size: 14px;
  margin-bottom: 15px;
  cursor: pointer;
  text-decoration: none;
  transition: all 0.5s;
  border: 1px solid #8590a6;
  border-radius: 5px;
  padding: 10px 15px;
}
.one-wait-see:hover {
  border: 1px solid #0984e3;
  color: #0984e3;
}
.one-wait-see span:first-child {
  margin-right: 5px;
}
.report span {
  display: block;
  text-align: center;
  font-size: 14px;
  line-height: 1.5;
  color: #8590a6;
  text-align: center;
}
.report span:first-child {
  margin-bottom: 10px;
  font-size: 24px;
  font-weight: 500;
  color: #1a1a1a;
}
.report span:nth-child(2) {
  margin-bottom: 20px;
}
.report-checklist /deep/ .el-checkbox {
  display: block;
  margin-bottom: 10px;
}
.show-comment {
  display: block;
  margin-top: 10px;
  border: 1px solid #74b9ff;
  padding: 5px 10px;
  border-radius: 5px;
}
.comment {
  display: none;
  margin-top: 10px;
  border: 1px solid #74b9ff;
  padding: 5px 10px;
  border-radius: 5px;
}
.write-comment {
  margin-top: 10px;
  display: flex;
}
.write-comment > div {
  padding: 10px 10px;
}
.write-comment div:first-child {
  width: 100%;
}
.one-comment span:first-child {
  font-size: 12px;
  color: #6d757a;
}
.one-comment span:nth-child(2) {
  margin-left: 10px;
  font-size: 12px;
  color: #6d757a;
}
.one-comment span:nth-child(3) {
  font-size: 13px;
  margin-top: 5px;
  display: block;
  margin-left: 10px;
}
</style>
