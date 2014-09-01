$(document).ready ->

  app.templates =
    allProductsView: $('#all-products-template').html()
    productView: $('#product-template').html()

  app.router = new app.Router();
  Backbone.history.start();

