$(function() { 
  
  var $nav = $("nav");
  var $nav_links = $("nav a")

  var $nav_one = $("#nav_one")
  var $nav_two = $("#nav_two")
  var $nav_three = $("#nav_three")


  var $section_one = $("#one")
  var $section_two = $("#two")
  var $section_three = $("#three")
  var $section_three = $("#four")

  $nav_links.click( function(event) {
    console.log('click')
    event.preventDefault()
    $.scrollTo(
      $(this).attr("href"),
      {
        duration: 1000,
        offset: { 'left':0, 'top':0 }
      }
    )
  })
}