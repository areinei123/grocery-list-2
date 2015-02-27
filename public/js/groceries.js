// $(document).ready(function() {});

// function validateForm() {
//     var x = document.forms["add_groceries"]["item"].value;
//     if (x == null || x == "") {
//         alert("Name must be filled out");
//         return false;
//     }
// }

$(".add_groceries").on("submit", function() {
  var item = $('#item').val();
  debugger
  if (item == ''){
    alert("You can't add something that isn't there!");
  } else {
    event.default()
  }
});
