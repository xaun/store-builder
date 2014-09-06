window.app = window.app or {}

app.CartView = Backbone.View.extend

  tagName: 'div'
  id: 'cart-view'


  initialize: ->
    # app.cartItems.fetch()
    # debugger;
    # _.each app.cart, (itemSelection) ->
    #   product = app.products.get { id: itemSelection }
    #   app.cartItems.add product
    # app.cartItems.invoke('save')

    if app.currentView
      app.currentView.remove()
    app.currentView = @

  render: ->
    cartView = Handlebars.compile(app.templates.cartView)
    @$el.html cartView { cartItems: app.cartItems.toJSON() }
    $('#store-main').append @el


