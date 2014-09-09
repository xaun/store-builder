window.app = window.app or {}

app.CheckoutView = Backbone.View.extend

  tagName: 'div'
  id: 'checkout-view'

  events:
    'click #guest-details-button': 'createGuest'

  initialize: ->
    # Refreshes the view upon initialize.
    if $('#store-main').html()
      $('#store-main').empty()

  render: ->
    checkoutView = Handlebars.compile(app.templates.checkoutView)
    @$el.html checkoutView()
    $('#store-main').append @el

  createGuest: ->
    app.guest = new app.Guest()

    # Save values from template inputs to rails db.
    app.guest.save({
      guest:
        'first_name': $('#first-name').val()
        'last_name': $('#last-name').val()
        'email': $('#email').val()
        'phone_number': $('#phone-number').val()
        'street': $('#street').val()
        'city': $('#city').val()
        'postcode': $('#postcode').val()
        'country': $('#country').val()
        'state': $('#state').val()
        'store_id': $('.store_id').text()
    })



