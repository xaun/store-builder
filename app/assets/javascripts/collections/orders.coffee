window.app = window.app or {}

app.Orders = Backbone.Collection.extend
  model: app.Order
  url: '/orders'
