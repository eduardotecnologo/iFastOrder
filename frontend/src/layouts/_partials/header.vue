<template>
  <header>
    <nav class="navbar navbar-epand-lg navbar-dark fixed-top bg-ifast">
      <div class="container">
        <router-link :to="{name: 'home'}" class="navbar-brand">
          <img src="@/assets/img/iFastOrderTrans.png" alt="iFastOrder" class="logo" >
        </router-link>
        <div>
          <ul class="navbar-nav ml-auto">
            <li class="navbar-item active">
              <router-link :to="{name: 'cart'}" class="nav-link">
                <i class="fas fa-shopping-cart"></i>(2)
              </router-link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
</template>
