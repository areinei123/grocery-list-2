$(".add_groceries").on("submit", function(event) {
  var item = $('#item').val();
  debugger
  if (item == ''){
    alert("You can't add something that isn't there!");
    event.preventDefault()
  }
});
