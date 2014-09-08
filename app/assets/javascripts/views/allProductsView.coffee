window.app = window.app or {}

app.AllProductsView = Backbone.View.extend

  tagName: 'div'
  id: 'all-products-view'

  events:
    'click #tiles-cart-button': 'itemToCart'

  initialize: ->
    # Refreshes the view upon initialize.
    if app.currentView
      app.currentView.remove()
    app.currentView = @

  render: ->
    console.log 'allProductsView'

    # Passes in the string of all-products-template html to be compiled.
    allProductsView = Handlebars.compile(app.templates.allProductsView)

    # Passes an object of JSON objects within an array into the
    # allProductsView function. Which then spits out the 'all-products-
    # template' as html into this.el with the evaluated app.products data.
    @$el.html allProductsView { products: app.products.toJSON() }

    $('#store-main').append @el

    # Sets the top & bot tile-bars to the size of the .product-tiles.
    $tileSize = $('.product-tiles').css('width')
    $('.top-tile-bars').css('width', $tileSize)
    $('.bot-tile-bars').css('width', $tileSize)

    # Function responsively adjust the top & bot tile-bars.
    $(window).on('resize', ->
      $tileSize = $('.product-tiles').css('width')
      $('.top-tile-bars').css('width', $tileSize)
      $('.bot-tile-bars').css('width', $tileSize)
    )

  itemToCart: (e) ->
    # Gets the products id from #tiles-cart-button's :data.
    $itemID = $(e.target.attributes["data-product-id"]).val()
    console.log $itemID

    # Pushes the selected product.id into the app.cart array.
    app.cart.push($itemID)

    $(e.target).text('Added')
    setTimeout ->
      $(e.target).text('Add To Cart')
    , 3000










