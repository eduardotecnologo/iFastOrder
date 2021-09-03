<template>
  <div class="row">
    <div class="col-lg-3">
      <h1 class="my-4 title-tenant">Parceiro</h1>
      <div class="list-group">
        <a href="#" class="list-group-item active">Categoria 1</a>
        <a href="#" class="list-group-item">Categoria 2</a>
        <a href="#" class="list-group-item">Categoria 3</a>
      </div>
    </div>
    <div class="col-lg 9">
      <div class="row my-4">
        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href=""><img class="card-img-top" src="#"  alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Pizza</a>
              </h4>
              <h5>R$ 12,99</h5>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat repudiandae ipsa
                atque dicta voluptatibus ea recusandae fugiat excepturi voluptatum quidem et ullam, tempora aliquam
                animi! Placeat accusantium molestiae aperiam optio!</p>
            </div>
            <div class="card-footer card-footer-custom">
              <router-link :to="{name: 'cart'}">Adicionar ao Carrinho<i class="fas fa-cart-plus"></i></router-link>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href=""><img class="card-img-top" src="#"  alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Hamburguer</a>
              </h4>
              <h5>R$ 12,99</h5>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat repudiandae ipsa
                atque dicta voluptatibus ea recusandae fugiat excepturi voluptatum quidem et ullam, tempora aliquam
                animi! Placeat accusantium molestiae aperiam optio!</p>
            </div>
            <div class="card-footer card-footer-custom">
              <a href="">Adicionar ao carrinho <i class="fas fa-cart-plus"></i></a>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href=""><img class="card-img-top" src="#"  alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Cachorro Quente</a>
              </h4>
              <h5>R$ 12,99</h5>
              <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat repudiandae ipsa
                atque dicta voluptatibus ea recusandae fugiat excepturi voluptatum quidem et ullam, tempora aliquam
                animi! Placeat accusantium molestiae aperiam optio!</p>
            </div>
            <div class="card-footer card-footer-custom">
              <a href="">Adicionar ao carrinho <i class="fas fa-cart-plus"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
