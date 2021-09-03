import Home from '@/pages/Home.vue';
import Products from '@/pages/Products.vue';
import Cart from '@/pages/Cart.vue';

const routes = [
  {
    path: '/',
    component: Home,
    name: 'home'
  },
  {
    path: '/products',
    component: Products,
    name: 'products'
  },
  {
    path: '/cart',
    component: Cart,
    name: 'cart'
  },
];
export default routes;
