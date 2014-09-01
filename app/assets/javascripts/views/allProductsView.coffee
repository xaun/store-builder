window.app = window.app or {}

app.AllProductsView = Backbone.View.extend

  tagName: 'div'
  id: 'all-products-view'

  initialize: ->
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

