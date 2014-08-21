$(document).ready ->
  $('#products-show').tablesorter()

  # submitting admin dashboard views store select input
  $('#dash-store-select .form-control').on('change', ->
    $('#dash-store-select').submit()
  )

