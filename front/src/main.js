import { createApp } from 'vue';
import VueRouter from 'vue-router';
import router from './routes';
import DefaultTemplate from './layouts/DefaultTemplate.vue';

createApp(DefaultTemplate)
.use(VueRouter)
.use(router)
.mount('#app')
