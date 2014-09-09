$(document).ready ->

  app.templates =
    allProductsView: $('#all-products-template').html()
    productView: $('#product-template').html()
    cartView: $('#cart-template').html()
    checkoutView: $('#guest-checkout-template').html()
    confirmCheckoutView: $('#confirm-checkout-template').html()
    aboutView: $('#about-template').html()
    contactView: $('#contact-template').html()

  # An array of pending product.id's to be added to cart localStorage.
  app.cart = []
  # Global variable that keeps track of the store_id.
  app.store_id = $('.store_id').text()

  app.router = new app.Router();
  Backbone.history.start();

# Reminder that I can make global helper objects.
# app.helpers =
#   calculate: ->

# app.helpers.calculate(something)
