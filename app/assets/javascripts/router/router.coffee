window.app = window.app or {}

app.Router = Backbone.Router.extend
  routes:
    '': 'index'

  initialize: ->

  index: ->
    app.products = new app.Products()
    app.products.fetch({data: {store_id: $('.store_id').text()}}).done ->
      allProductsView = new app.AllProductsView({collection: app.products})
      allProductsView.render()
