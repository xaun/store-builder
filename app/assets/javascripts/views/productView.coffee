window.app = window.app or {}

app.ProductView = Backbone.View.extend

  tagName: 'div'
  id: 'all-products-view'

  initialize: ->
    if app.currentView
      app.currentView.remove()
    app.currentView = @


  render: ->
    productView = Handlebars.compile(app.templates.productView)

    # JSON Object of the selected product passed into this.el as html.
    @$el.html productView { product: app.product.toJSON() }

    $('#store-main').append @el

