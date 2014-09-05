window.app = window.app or {}

app.CartView = Backbone.View.extend

  tagName: 'div'
  id: 'cart-view'


  initialize: ->
    _.each app.cart, (itemSelection) ->
      product = app.products.get { id: itemSelection }
      # console.log product
      app.CartItems.add product
      console.log app.CartItems

    if app.currentView
      app.currentView.remove()
    app.currentView = @

  render: ->


