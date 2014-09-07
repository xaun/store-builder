window.app = window.app or {}

app.CartView = Backbone.View.extend

  tagName: 'div'
  id: 'cart-view'

  events:
    'click #remove-cart-item': 'removeCartItem'

  initialize: ->
    # Refreshes the view upon initialize.
    if app.currentView
      app.currentView.remove()
    app.currentView = @

  render: ->
    cartView = Handlebars.compile(app.templates.cartView)
    @$el.html cartView { cartItems: app.cartItemsArray }
    $('#store-main').append @el

  removeCartItem: (e) ->
    # Gets the cart item's id from #remove-cart-item's :data.
    $cartItemID = $(e.target.attributes["data-product-id"]).val()
    # Gets the hash of locally stored items by the store_id in JSON format.
    cartItemsJSON = localStorage.getItem(app.store_id)
    # Convert the JSON to an Array of current cartItem Objects.
    app.cartItemsArray = JSON.parse(cartItemsJSON)

    # Searches through app.cartItemsArray for $cartItemID, removes the object
    # from the array, and re-assigns the new array to app.cartItemsArray.
    app.cartItemsArray = _.without(app.cartItemsArray, _.findWhere(app.cartItemsArray, {id: parseInt($cartItemID)}));
    # Converts back to a JSON string, and saves to localStorage.
    localStorage.setItem(app.store_id, JSON.stringify(app.cartItemsArray))

    # Renders a new CartView with the updated app.cartItemsArray.
    cartView = new app.CartView({collection: app.cartItemsArray})
    cartView.render()







