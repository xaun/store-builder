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
        store_id: app.store_id
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
        store_id: app.store_id
        visibility: true
      }
    }).done ->
      # Get's the selected product.
      app.product = app.products.get(id)
      # Passes the selected product as an object into the productView.
      productView = new app.ProductView({collection: app.product})
      productView.render()


  viewCart: ->
    app.products = new app.Products()
    # Fetch associated products using the cheeky hidden div in shopfront.haml
    # to get the store_id dynamically.
    app.products.fetch({
      # The data method is like the 'where' A/R query.
      data: {
        # See code & comments in shopfront.haml on div.store_id.
        store_id: app.store_id
        # Query for the item shopfront visibility feature.
        visibility: true
      }
    # the .done function is needed so the data is fetched before the following # code is run.
    }).done ->
      app.cartItems = new app.CartItemList()
      _.each app.cart, (product_id) ->
        product = app.products.get(product_id)
        this_product_id = product.get('id')
        product = product.toJSON()
        product.product_id = this_product_id
        product.id = (app.cartItems.length + 1)

        app.cartItems.add( product )
      # app.cartItems.invoke('save')

      storageCheck = localStorage.getItem(app.store_id)

      # If storageCheck is empty, set cartItems to localStorage.
      unless storageCheck
        cartItemsJSON = JSON.stringify(app.cartItems)
        localStorage.setItem(app.store_id, cartItemsJSON)
        app.cartItemsArray = JSON.parse(cartItemsJSON)
      else if app.cartItems.length > 0
        cartItemsJSON = localStorage.getItem(app.store_id)
        newCartItemsJSON = JSON.stringify(app.cartItems)
        newCartItemsArray = JSON.parse(newCartItemsJSON)
        app.cartItemsArray = JSON.parse(cartItemsJSON)

        _.each newCartItemsArray, (object) ->
          app.cartItemsArray.push(object)

        localStorage.setItem(app.store_id, JSON.stringify(app.cartItemsArray))
      else
        cartItemsJSON = localStorage.getItem(app.store_id)
        app.cartItemsArray = JSON.parse(cartItemsJSON)

      app.cart = []
      app.cartItems = false
      cartView = new app.CartView({collection: app.cartItemsArray})
      cartView.render()




