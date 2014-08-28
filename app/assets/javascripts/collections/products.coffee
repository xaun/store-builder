window.app = window.app or {}

app.Products = Backbone.Collection.extend
  model: app.Product
  url: '/admin/products'
