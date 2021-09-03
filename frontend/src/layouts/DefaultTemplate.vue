<template>
  <div>
    <header-component/>
    <!-- Page Content -->
    <div class="container container-body">
      <router-view></router-view>
    </div>
    <footer-component/>
  </div>
</template>
<script>
import 'bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import HeaderComponent from '../layouts/_partials/header.vue';
import FooterComponent from '../layouts/_partials/footer.vue';
export default {
  components:{
    HeaderComponent,
    FooterComponent
  }
};
</script>
<style lang="css" scoped>
@import url('../assets/css/ifast.css');
@import url('../assets/css/reset.css');
</style>
