window.app = window.app or {}

app.Router = Backbone.Router.extend
  routes:
    '': 'index'

  initialize: ->

  index: ->
    app.products = new app.Products()

    # Fetch associated products using the cheeky hidden div in shopfront.haml to get the store_id and
    # .
    app.products.fetch({
      # The data method is like the 'where' A/R query.
      data: {
        # See code & comments in shopfront.haml on div.store_id.
        store_id: $('.store_id').text()
        # Query for the item shopfront visibility feature.
        visibility: true
      }
    # the .done function is needed so the data is fetched before the following # code is run.
    }).done ->
      #
      allProductsView = new app.AllProductsView({collection: app.products})
      allProductsView.render()



