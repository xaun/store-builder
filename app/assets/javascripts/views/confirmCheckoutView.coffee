window.app = window.app or {}

app.ConfirmCheckoutView = Backbone.View.extend

  tagName: 'div'
  id: 'confirm-checkout-view'

  event:
    '': 'createOrder'

  initialize: (options) ->
    # Refreshes the view upon initialize.
    if $('#store-main').html()
      $('#store-main').empty()

    @guest = options.model
    @items = options.collection

  render: ->
    confirmCheckoutView = Handlebars.compile(app.templates.confirmCheckoutView)

    # Push each item's price into an array.
    pricesArray = []
    _.each @items, (item) ->
      pricesArray.push parseFloat item.price

    # Add up the price array.
    totalPrice = _.reduce pricesArray, (sum, num) ->
      sum + num
    , 0
    # Save totalPrice as an object.
    totalPrice = {total: totalPrice}

    # Pass objects into view.
    @$el.html confirmCheckoutView {guest: @guest, items: @items, cost: totalPrice}

    $('#store-main').append @el

  createOrder: ->


