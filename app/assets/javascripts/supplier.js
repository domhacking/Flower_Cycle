railsUser = {};

railsUser.userForm = function(){

  var userName = $('#user_name').val();
  var userAddressNumber = $('#user_address_number').val();
  var userStreetName = $('#user_street_name').val();
  var userPostcode = $('#user_postcode').val();
  var flowerDescription = $('#flower_description').val();
  var quantityOfFlowers = $('#quantity_of_flowers').val();
  var equipmentReturn = $('#equipment_return').val();

  // fill up the object to send to Rails
  var user = {
    user_name: userName,
    user_address_number: userAddressNumber,
    user_street_name: userStreetName,
    user_postcode: userPostcode,
    flower_description: flowerDescription,
    quantity_of_flowers: quantityOfFlowers,
    equipment_return: equipmentReturn
  }  
  
  $.ajax({
    url: '/users',
    method: 'POST',
    data: {user: user},
    dataType: "json"
  }).success(function(data){
    console.log(data)
    railsUser.getUsers();
      // users.togglePages('#all_users');
    });
}

railsUser.getUsers = function(){

  //   //Clear the posts table to avoid  duplicates posts;
  $('#listusers').empty();
  $.ajax({
    url: '/users',
    type: "GET",
    dataType:"json"
  }).success(function(data){
    console.log(data)
    $.each(data, function(index, item){
      console.log('hello tilda')
  
      var listUsers = $("<ul>"+
        "<li>" + item.user_name+"</li>"+
        "<li>" + item.user_address_number+"</li>"+
        "<li>" + item.user_street_name +"</li>"+
        "<li>" + item.user_postcode +"</li>"+
        "<li>" + item.flower_description +"</a></li>"+
        "<li>" + item.quantity_of_flowers +"</a></li>"+
        "<li>" + item.equipment_return +"</a></li>"+
        
        "<button data-id='" + item.id+"' class='btn edit_post'>Edit</button> <button data-id='" + item.id+"' class='btn btn-danger delete_post'>Delete</button>"
        );

      listUsers.appendTo("#listusers")
    });
  });
}    

railsUser.deleteUser = function(){

  $this = $(this);
  var userId = $(this).data('id');

  $.ajax({
    url: '/users/' + userId,
    type: 'DELETE',
    dataType: 'json'
  }).success(function(data){
    $this.closest('ul').remove();
  });
}

railsUser.editUser = function() {
  // $this = $(this);

  var userId = $(this).data('id');
  
  $.ajax({
    url: '/users/' + userId,
    type: 'GET',
    dataType: 'json'
  })
  .success(function(data) {
    console.log(data);
    $('#user_name').val(data.user_name);
    $('#user_description').val(data.user_description);
    $('#price').val(data.user_price);
    $('#number_users').val(data.number_users);
  })
}


$(function(){
  $('.user_submit').click(function(user){
    user.pruserDefault()
    railsUser.userForm()
  });
  user.pruserDefault()
  railsUser.getUsers();
  $('#listusers').on('click', '.delete_post', railsUser.deleteUser);
  $('#listusers').on('click', '.edit_post', railsUser.editUser); 
})


 