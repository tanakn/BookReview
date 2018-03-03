# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(->
	$('.book').click(toggle_detail)

)

toggle_detail = ->
	$(this).children(".book-detail").toggle()
	console.log("押した")
	return

