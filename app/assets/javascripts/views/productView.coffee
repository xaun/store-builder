window.app = window.app or {}

app.ProductView = Backbone.View.extend

  tagName: 'div'
  id: 'product-view'

  events:
    'click #details-cart-button': 'itemToCart'

  initialize: ->
    # Refreshes the view upon initialize.
    if $('#store-main').html()
      $('#store-main').empty()


  render: ->
    productView = Handlebars.compile(app.templates.productView)
    # JSON Object of the selected product passed into this.el as html.
    @$el.html productView { product: app.product.toJSON() }
    $('#store-main').append @el
    $(window).scrollTop('#product-view')

  itemToCart: (e) ->
    # Gets the products id from #details-cart-button's :data.
    $itemID = $(e.target.attributes["data-product-id"]).val()
    console.log $itemID

    # Pushes the selected product.id into the app.cart array.
    app.cart.push($itemID)


    $(e.target).text('Added')
    setTimeout ->
      $(e.target).text('Add To Cart')
    , 800

