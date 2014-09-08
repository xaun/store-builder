window.app = window.app or {}

app.Guests = Backbone.Collection.extend
  model: app.Guest
  url: '/guests'
