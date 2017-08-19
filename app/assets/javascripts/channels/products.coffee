App.products = App.cable.subscriptions.create "ProductsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $(".store #main").html(data.html)
    $('#current_product').css({'background-color':'#9c9'})\
      .animate({'background-color':'white'}, 3000)
