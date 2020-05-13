import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import ElementUI from "element-ui";
import "element-ui/lib/theme-chalk/index.css";
// fade/zoom 等
import "element-ui/lib/theme-chalk/base.css";
// collapse 展开折叠
import CollapseTransition from "element-ui/lib/transitions/collapse-transition";
import axios from "axios";
import VueAxios from "vue-axios";
import "./assets/icon/iconfont.css";
import animated from "animate.css";

Vue.use(animated);

Vue.use(VueAxios, axios);

Vue.use(ElementUI);

Vue.component(CollapseTransition.name, CollapseTransition);

Vue.config.productionTip = false;
Vue.prototype.http = axios;

new Vue({
  router,
  render: (h) => h(App),
}).$mount("#app");
