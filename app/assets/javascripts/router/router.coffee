window.app = window.app or {}

app.Router = Backbone.Router.extend
  routes:
    '': 'index'
    'product/:id': 'viewProduct'
    'cart': 'viewCart'
    'checkout': 'viewCheckout'
    'confirm': 'viewConfirmCheckout'
    'about': 'viewAbout'
    'contact': 'viewContact'

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
      # Create a new cartItems collection.
      app.cartItems = new app.CartItemList()
      # Iterate through product id's in the app.cart Array.
      _.each app.cart, (product_id) ->
        # Get the product from the products collection.
        product = app.products.get(product_id)
        # Save the product.id.
        this_product_id = product.get('id')
        # Clone the product by converting it to JSON.
        product = product.toJSON()
        # Sets the product.id under the new attribute of product.product_id.
        product.product_id = this_product_id
        # Overwrites product.id with a counter, so every cartItem has a
        # unique id.
        product.id = (app.cartItems.length + 1)
        # Adds the new product to the cartItems collection.
        app.cartItems.add( product )
      # app.cartItems.invoke('save')

      # Before setting anything to storage & rendering..
      # Gets all items currently saved in local storage belonging to store_id.
      storageCheck = localStorage.getItem(app.store_id)

      # If storageCheck is empty, set all cartItems to localStorage.
      unless storageCheck
        # Save cartItems as a JSON string.
        cartItemsJSON = JSON.stringify(app.cartItems)
        # Save to localStorage.
        localStorage.setItem(app.store_id, cartItemsJSON)
        # Save cartItemsJSON string as an Array of objects for rendering.
        app.cartItemsArray = JSON.parse(cartItemsJSON)

      # If app.cartItems collection is NOT empty & storageCheck is NOT empty.
      else if app.cartItems.length > 0
        # Get the existing cartItems from localStorage.
        cartItemsJSON = localStorage.getItem(app.store_id)
        # Save the new cartItems collection to JSON string.
        newCartItemsJSON = JSON.stringify(app.cartItems)
        # Save the new cartItems as an Array of Objects.
        newCartItemsArray = JSON.parse(newCartItemsJSON)
        # Save cartItemsJSON as an Array of Objects.
        app.cartItemsArray = JSON.parse(cartItemsJSON)

        # Iterate through each newCartItemsArray, and push each object into
        # app.cartItemsArray ready for rendering.
        _.each newCartItemsArray, (object) ->
          app.cartItemsArray.push(object)

        # Overwrite the localStorage hash with the new JSON string of cartItem
        # objects.
        localStorage.setItem(app.store_id, JSON.stringify(app.cartItemsArray))

      # If storageCheck is empty & app.cartItems is empty.
      else
        # Get the items from localStorage
        cartItemsJSON = localStorage.getItem(app.store_id)
        # Save cartItemsJSON as an Array of Objects for rendering.
        app.cartItemsArray = JSON.parse(cartItemsJSON)

      # Clear the app.cart, as all pending products have been added to storage.
      app.cart = []
      # Clear the app.cartItems collection.
      app.cartItems = false
      # Render app.cartItemsArray!
      cartView = new app.CartView({collection: app.cartItemsArray})
      cartView.render()

  viewCheckout: ->
    if localStorage['guest']
      guestJSON = localStorage.getItem('guest')
      app.guestObject = JSON.parse(guestJSON)
      checkoutView = new app.CheckoutView({model: app.guestObject})
    else
      checkoutView = new app.CheckoutView()

    checkoutView.render()

  viewConfirmCheckout: ->
    if app.guest
      # Gets the guest object from the Backbone Model.
      guestObject = app.guest.attributes.guest
      # Save the guest information to localStorage until checkout is complete.
      guestJSON = JSON.stringify(guestObject)
      localStorage.setItem('guest', guestJSON)
    else
      guestJSON = localStorage.getItem('guest')
      guestObject = JSON.parse(guestJSON)

    # Gets the cartItems from localStorage.
    cartItemsJSON = localStorage.getItem(app.store_id)
    # Saves the cartItems as an Array of Objects.
    cartItemsArray = JSON.parse(cartItemsJSON)

    # Sends the guest, and the cartItems to the view via options.
    confirmCheckoutView = new app.ConfirmCheckoutView(model: guestObject, collection: cartItemsArray)
    confirmCheckoutView.render()

  viewAbout: ->
    aboutView = new app.AboutView()
    aboutView.render()

  viewContact: ->
    contactView = new app.ContactView()
    contactView.render()





