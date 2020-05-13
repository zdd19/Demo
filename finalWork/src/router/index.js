import Vue from "vue";
import Router from "vue-router";
import Index from "@/components/Index.vue";
import Encyclopedias from "@/components/Encyclopedias.vue";
import Information from "@/components/Information.vue";
import Conserve from "@/components/Conserve.vue";
import Transaction from "@/components/Transaction.vue";
import Chat from "@/components/Chat.vue";

import Alasijia from "@/components/dog-baike/Alasijia.vue";
import Bage from "@/components/dog-baike/Bage.vue";
import Bianmu from "@/components/dog-baike/Bianmu.vue";
import Bixiong from "@/components/dog-baike/Bixiong.vue";
import Bomei from "@/components/dog-baike/Bomei.vue";
import Chaiquan from "@/components/dog-baike/Chaiquan.vue";
import Demu from "@/components/dog-baike/Demu.vue";
import Douniu from "@/components/dog-baike/Douniu.vue";
import Guibin from "@/components/dog-baike/Guibin.vue";
import Hashiqi from "@/components/dog-baike/Hashiqi.vue";
import Hudie from "@/components/dog-baike/Hudie.vue";
import Jinmao from "@/components/dog-baike/Jinmao.vue";
import Jiwawa from "@/components/dog-baike/Jiwawa.vue";
import Keji from "@/components/dog-baike/Keji.vue";
import Labuladuo from "@/components/dog-baike/Labuladuo.vue";
import Lachang from "@/components/dog-baike/Lachang.vue";
import Luoweina from "@/components/dog-baike/Luoweina.vue";
import Samoye from "@/components/dog-baike/Samoye.vue";
import Taidi from "@/components/dog-baike/Taidi.vue";
import Tianyuan from "@/components/dog-baike/Tianyuan.vue";
Vue.use(Router);

export default new Router({
  routes: [
    { path: "/Index", component: Index },
    { path: "/Encyclopedias", component: Encyclopedias },
    { path: "/Information", component: Information },
    { path: "/Conserve", component: Conserve },
    { path: "/Transaction", component: Transaction },
    { path: "/Chat", component: Chat },
    { path: "/", redirect: "/Index" },

    { path: "/Alasijia", component: Alasijia },
    { path: "/Bage", component: Bage },
    { path: "/Bianmu", component: Bianmu },
    { path: "/Bixiong", component: Bixiong },
    { path: "/Bomei", component: Bomei },
    { path: "/Chaiquan", component: Chaiquan },
    { path: "/Demu", component: Demu },
    { path: "/Douniu", component: Douniu },
    { path: "/Guibin", component: Guibin },
    { path: "/Hashiqi", component: Hashiqi },
    { path: "/Hudie", component: Hudie },
    { path: "/Jinmao", component: Jinmao },
    { path: "/Jiwawa", component: Jiwawa },
    { path: "/Keji", component: Keji },
    { path: "/Labuladuo", component: Labuladuo },
    { path: "/Lachang", component: Lachang },
    { path: "/Luoweina", component: Luoweina },
    { path: "/Samoye", component: Samoye },
    { path: "/Taidi", component: Taidi },
    { path: "/Tianyuan", component: Tianyuan },
  ],
});
// const routes = [
//   { path: "/Index", component: Index },
//   { path: "/Encyclopedias", component: Encyclopedias },
//   { path: "/Information", component: Information },
//   { path: "/Conserve", component: Conserve },
//   { path: "/Transaction", component: Transaction },
//   { path: "/Chat", component: Chat },
//   { path: "/", redirect: "/Index" },

//   { path: "/Alasijia", component: Alasijia },
//   { path: "/Bage", component: Bage },
//   { path: "/Bianmu", component: Bianmu },
//   { path: "/Bixiong", component: Bixiong },
//   { path: "/Bomei", component: Bomei },
//   { path: "/Chaiquan", component: Chaiquan },
//   { path: "/Demu", component: Demu },
//   { path: "/Douniu", component: Douniu },
//   { path: "/Guibin", component: Guibin },
//   { path: "/Hashiqi", component: Hashiqi },
//   { path: "/Hudie", component: Hudie },
//   { path: "/Jinmao", component: Jinmao },
//   { path: "/Jiwawa", component: Jiwawa },
//   { path: "/Keji", component: Keji },
//   { path: "/Labuladuo", component: Labuladuo },
//   { path: "/Lachang", component: Lachang },
//   { path: "/Luoweina", component: Luoweina },
//   { path: "/Samoye", component: Samoye },
//   { path: "/Taidi", component: Taidi },
//   { path: "/Tianyuan", component: Tianyuan },
// ];
// const router = new Router({
//   routes, // routes: routes 的简写
// });
// router.beforeEach((to, from, next) => {
//   // chrome
//   document.body.scrollTop = 0;
//   // firefox
//   document.documentElement.scrollTop = 0;
//   // safari
//   window.pageYOffset = 0;
//   next();
// });
