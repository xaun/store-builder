$(document).ready ->

  app.templates =
    allProductsView: $('#all-products-template').html()
    productView: $('#product-template').html()

  app.cart = []

  app.router = new app.Router();
  Backbone.history.start();


# app.helpers =
#   calculate: ->


# app.helper.calculate(something)
