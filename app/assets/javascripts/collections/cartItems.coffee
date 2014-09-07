window.app = window.app or {}

app.CartItemList = Backbone.Collection.extend
  model: app.CartItem

  # localStorage: new Backbone.LocalStorage('cartItems-backbone')

