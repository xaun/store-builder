window.app = window.app or {}

app.AboutView = Backbone.View.extend

  tagName: 'div'
  id: 'about-view'

  initialize: ->
    # Refreshes the view upon initialize.
    if $('#store-main').html()
      $('#store-main').empty()

  render: ->
    aboutView = Handlebars.compile(app.templates.aboutView)
    @$el.html aboutView()
    $('#store-main').append @el
