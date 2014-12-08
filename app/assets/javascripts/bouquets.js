railsBouquet = {};

railsBouquet.bouquetForm = function(){

  var bouquetName = $('#bouquet_name').val();
  var bouquetDescription = $('#bouquet_description').val();
  var price = $('#price').val();
  var numberBouquets = $('#number_bouquets').val();

  // fill up the object to send to Rails
  var bouquet = {
    bouquet_name: bouquetName,
    bouquet_description: bouquetDescription,
    price: price,
    number_bouquets: numberBouquets
  }  

  $.ajax({
    url: '/bouquets',
    method: 'POST',
    data: bouquet,
    dataType: "json"
  }).success(function(data){
    console.log(data)
      bouquets.getPosts();
      // bouquets.togglePages('#all_bouquets');

  });
}

railsBouquet.getBouquets = function(){
  //   //Clear the posts table to avoid  duplicates posts;
  //   $('#all_bouquets table tbody').empty();
  $.ajax({
    url: '/bouquets',
    type: "GET",
    dataType:"json"
    }).success(function(data){
      console.log('hello')
      $.each(data, function(index, item){
        var listBouquets = $("<ul>"+
            "<li>" + item.bouquet_name+"</li>"+
            "<li>" + item.price+"</li>"+
            "<li>" + item.bouquet_description +"</li>"+
            "<li><a href=''>" + item.website +"</a></li>"+
            "<td><button data-id='" + item.id+"' class='btn edit_post'>Edit</button> <button data-id='" + item.id+"' class='btn btn-danger delete_post'>Delete</button></td>"+
            "</tr>");

          listBouquets.appendTo("#listbouquets")
      });
      console.log(data);
    })
  }


  

$(function(){
 $('.bouquet_submit').click(function(event){
  event.preventDefault()
  railsBouquet.bouquetForm()
 });
  event.preventDefault()
  railsBouquet.getBouquets(); 
})


