$(function(){
  $('.newuser').on('change', function(){
    event.preventDefault();
    console.log('hello')
  })
})



// railsAjax = {};
// railsAjax.fields = ["title", "description", "author", "twitter", "pusplished_at"]

// railsAjax.togglePages = function(showPage){
//   var hidePage = (showPage === "#new_post") ? '#all_posts' : '#new_post';
//   $(hidePage).slideUp(function(){
//     $(showPage).slideDown();
//   });
// }