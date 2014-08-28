window.app = window.app or {}

app.AllProductsView = Backbone.View.extend

  tagName: 'div'

  initialize: ->
    console.log @collection
    if app.currentView
      app.currentView.remove()
    else
      app.currentView = @

  render: ->
    console.log 'allProductsView'
    allProductsView = Handlebars.compile(app.templates.allProductsView)
    @$el.html allProductsView {products: app.products.toJSON()}
    @$el.attr 'id', 'all-products-view'
    $('#store-main').append @el


