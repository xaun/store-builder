$(document).ready ->

  app.templates =
    allProductsView: $('#all-products-template').html()

  app.router = new app.Router();
  console.log "Initialised #{app.Router} app.Router"
  Backbone.history.start();

