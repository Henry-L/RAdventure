# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('[id^="cell"]').click ->
  $('.active-cell').removeClass("active-cell")
  $(this).addClass("active-cell")

$('body').keydown (e) ->

    active =  $('.active-cell')
    switch e.keyCode
      when 38
        active.removeClass("active-cell")
        active_x = active.attr("x")
        active_y = parseInt(active.attr("y"))
        if active_y > 0
          next = active_y - 1
        else
          next = 10
        $('[id^="cell"][y='+next+'][x='+active_x+']').addClass("active-cell")
      when 40
        active.removeClass("active-cell")
        active_x = active.attr("x")
        active_y = parseInt(active.attr("y"))
        if active_y < 10
          next = active_y + 1
        else
          next = 0
        $('[id^="cell"][y='+next+'][x='+active_x+']').addClass("active-cell")
      when 37
        active.removeClass("active-cell")
        active_y = active.attr("y")
        active_x = parseInt(active.attr("x"))
        if active_x > 0
          next = active_x - 1
        else
          next = 10
        $('[id^="cell"][x='+next+'][y='+active_y+']').addClass("active-cell")
      when 39
        active.removeClass("active-cell")
        active_y = active.attr("y")
        active_x = parseInt(active.attr("x"))
        if active_x < 10
          next = active_x + 1
        else
          next = 0
        $('[id^="cell"][x='+next+'][y='+active_y+']').addClass("active-cell")

    return true
