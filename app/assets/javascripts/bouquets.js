railsBouquet = {};

railsBouquet.bouquetForm = function(){

  var bouquetName = $('#bouquet_name').val();
  var bouquetDescription = $('#bouquet_description').val();
  var price = $('#price').val();
  var numberBouquets = $('#number_bouquets').val();
  var website = $('#website').val;

  // fill up the object to send to Rails
  var bouquet = {
    bouquet_name: bouquetName,
    bouquet_description: bouquetDescription,
    price: price,
    number_bouquets: numberBouquets,
    website: website
  }  
  
  $.ajax({
    url: '/bouquets',
    method: 'POST',
    data: {bouquet: bouquet},
    dataType: "json"
  }).success(function(data){
    console.log(data)
    railsBouquet.getBouquets();
      // bouquets.togglePages('#all_bouquets');
    });
}

railsBouquet.getBouquets = function(){
  //   //Clear the posts table to avoid  duplicates posts;
  $('#listbouquets').empty();
  $.ajax({
    url: '/bouquets',
    type: "GET",
    dataType:"json"
  }).success(function(data){
    
    $.each(data, function(index, item){
 
      var listBouquets = $("<ul class = 'listbouquets'>"+
        "<img class = 'bouquet_image' src='/assets/" + item.bouquet_image + "'>"+
        "<p class = 'bouquet_name'>" + item.bouquet_name + "</p>"+
        "<p class = 'price'>" + "£" + item.price+"</p>"+
        "<p class = 'bouquet_description'>" + item.bouquet_description +"</p>"+
        "<p>" + item.website +"</a></p>" +
        "<td><button data-id='" + item.id+"' class='btn edit_post'>Edit</button> <button data-id='" + item.id+"' class='btn btn-danger delete_post'>Delete</button></td>" + "<form action='/charges' method='post'> <script src='https://checkout.stripe.com/checkout.js' class='stripe-button' data-key='pk_test_97wILwGp7Sbroy6sUrVrPLXK' data-description='A flower purchase' data-amount=" + item.price * 100 + " data-currency='gbp'></script></form>" + "</tr>" + "</ul>");


      listBouquets.appendTo("#listbouquets")
    });
  });
} 
      
   

railsBouquet.deleteBouquet = function(){

  $this = $(this);
  var bouquetId = $(this).data('id');

  $.ajax({
    url: '/bouquets/' + bouquetId,
    type: 'DELETE',
    dataType: 'json',
  }).success(function(data){
    $this.closest('ul').remove();
  });
}

railsBouquet.editBouquet = function() {
  // $this = $(this);

  var bouquetId = $(this).data('id');
  
  $.ajax({
    url: '/bouquets/' + bouquetId,
    type: 'GET',
    dataType: 'json'
  })
  .success(function(data) {
    console.log(data);
    $('#bouquet_name').val(data.bouquet_name);
    $('#bouquet_description').val(data.bouquet_description);
    $('#price').val(data.bouquet_price);
    $('#number_bouquets').val(data.number_bouquets);
  })
}


$(function(){
  $('.bouquet_submit').click(function(event){
    event.preventDefault()
    railsBouquet.bouquetForm()
  });
  event.preventDefault()
  railsBouquet.getBouquets();
  $('#listbouquets').on('click', '.delete_post', railsBouquet.deleteBouquet);
  $('#listbouquets').on('click', '.edit_post', railsBouquet.editBouquet); 
})


// var handler = StripeCheckout.configure({
//   key: 'pk_live_tD80PqeutCcWZZ6EPaPJLK7O',
//   image: '/alexflowercyclelogo.png',
//   token: function(token) {
//     // You can access the token ID with `token.id`
//   }
// });

// $('.customButton').on('click', function(e) {
//   // Open Checkout with further options
//   handler.open({
//     name: 'Demo Site',
//     description: '2 widgets (£20.00)',
//     amount: 2000
//   });
//   e.preventDefault();
// });

// Close Checkout on page navigation
// $(window).on('popstate', function() {
//   handler.close();
// });

