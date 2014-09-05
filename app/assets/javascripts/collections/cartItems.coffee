window.app = window.app or {}

app.CartItemList = Backbone.Collection.extend
  model: app.CartItem

  localStorage: new Backbone.LocalStorage('cartItems-backbone')


# Create a global collection of cartItems.
app.CartItems = new app.CartItemList()
