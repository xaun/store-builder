window.app = window.app or {}

app.ContactView = Backbone.View.extend

  tagName: 'div'
  id: 'contact-view'

  initialize: ->
    # Refreshes the view upon initialize.
    if $('#store-main').html()
      $('#store-main').empty()

  render: ->
    contactView = Handlebars.compile(app.templates.contactView)
    @$el.html contactView()
    $('#store-main').append @el
