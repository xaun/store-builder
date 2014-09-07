window.app = window.app or {}

app.CartView = Backbone.View.extend

  tagName: 'div'
  id: 'cart-view'

  events:
    'click #remove-cart-item': 'removeCartItem'

  initialize: ->
    if app.currentView
      app.currentView.remove()
    app.currentView = @

  render: ->
    cartView = Handlebars.compile(app.templates.cartView)
    @$el.html cartView { cartItems: app.cartItemsArray }
    $('#store-main').append @el

  removeCartItem: (e) ->
    $cartItemID = $(e.target.attributes["data-product-id"]).val()
    cartItemsJSON = localStorage.getItem(app.store_id)
    app.cartItemsArray = JSON.parse(cartItemsJSON)
    app.cartItemsArray = _.without(app.cartItemsArray, _.findWhere(app.cartItemsArray, {id: parseInt($cartItemID)}));

    localStorage.setItem(app.store_id, JSON.stringify(app.cartItemsArray))

    # app.currentView.remove()
    cartView = new app.CartView({collection: app.cartItemsArray})
    cartView.render()
    # debugger;






