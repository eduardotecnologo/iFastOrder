import Vue from 'vue'
import VueRouter from 'vue-router';
import router from './routes';
import DefaultTemplate from './layouts/DefaultTemplate.vue';


Vue.config.productionTip = false

new Vue({
  render: h => h(DefaultTemplate),
  router
}).$mount('#app')
