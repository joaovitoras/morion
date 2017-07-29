// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  var clipboard = new Clipboard('.copy-icon');

  clipboard.on('success', function(e) {
    imgBox = $(e.trigger).parents('.img-box')
    icon = $(e.trigger)

    imgBox.addClass('copied')
    icon.addClass('white')
    setTimeout(function() {
       imgBox.removeClass('copied')
       icon.removeClass('white')
    }, 600)
  });

})
