$(document).ready ->

  app.templates =
    allProductsView: $('#all-products-template').html()

  app.router = new app.Router();
  Backbone.history.start();

