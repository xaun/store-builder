$(document).ready ->
  $('#products-show').tablesorter()

  # submitting admin dashboard views store select input
  $('#dash-store-select .form-control').on('change', ->
    $('#dash-store-select').submit()
  )

  # submitting admin settings views store select input
  $('#settings-store-select .form-control').on('change', ->
    $('#settings-store-select').submit()
  )
