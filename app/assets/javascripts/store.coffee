$(document).ready ->

  app.templates =
    allProductsView: $('#all-products-template').html()
    productView: $('#product-template').html()
    cartView: $('#cart-template').html()

  app.cart = []
  app.store_id = $('.store_id').text()

  app.router = new app.Router();
  Backbone.history.start();


# app.helpers =
#   calculate: ->


# app.helper.calculate(something)
