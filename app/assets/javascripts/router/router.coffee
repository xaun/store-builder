window.app = window.app or {}

app.Router = Backbone.Router.extend
  routes:
    '': 'index'
    'product/:id': 'viewProduct'
    'cart': 'viewCart'

  initialize: ->


  index: ->
    app.products = new app.Products()
    # Fetch associated products using the cheeky hidden div in shopfront.haml
    # to get the store_id dynamically.
    app.products.fetch({
      # The data method is like the 'where' A/R query.
      data: {
        # See code & comments in shopfront.haml on div.store_id.
        store_id: $('.store_id').text()
        # Query for the item shopfront visibility feature.
        visibility: true
      }
    # the .done function is needed so the data is fetched before the following # code is run.
    }).done ->
      # Passes an object of the fetched products into the allProductsView
      # object.
      allProductsView = new app.AllProductsView({collection: app.products})
      allProductsView.render()

  viewProduct: (id) ->
    app.products = new app.Products()

    # New collection to fetch the data from the server before getting the product from the collection.
    app.products.fetch({
      # Need to pass these params to controller for the where A/R query.
      data: {
        store_id: $('.store_id').text()
        visibility: true
      }
    }).done ->
      # Get's the selected product.
      app.product = app.products.get(id)
      # Passes the selected product as an object into the productView.
      productView = new app.ProductView({collection: app.product})
      productView.render()


  viewCart: ->
    cartView = new app.CartView()
    cartView.render()








