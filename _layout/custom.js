$(function() {
  
  $("li:has(.content) > .annotation")
    .filter(function(i, x) {
      return $(x).height() > 40 })
    .addClass("folded")
    .prepend($("<span class='ellipsis'>+</span>").click(function(e) {
      $(this).parent().toggleClass("folded");

      if ($(this).text() == "+") {
        $(this).text("-")
      } else {
        $(this).text("+")
      }
    }))

});
