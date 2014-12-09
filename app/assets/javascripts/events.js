railsEvent = {};

railsEvent.eventForm = function(){

  var eventName = $('#event_name').val();
  var eventAddressNumber = $('#event_address_number').val();
  var eventStreetName = $('#event_street_name').val();
  var eventPostcode = $('#event_postcode').val();
  var flowerDescription = $('#flower_description').val();
  var quantityOfFlowers = $('#quantity_of_flowers').val();
  var equipmentReturn = $('#equipment_return').val();

  // fill up the object to send to Rails
  var event = {
    event_name: eventName,
    event_address_number: eventAddressNumber,
    event_street_name: eventStreetName,
    event_postcode: eventPostcode,
    flower_description: flowerDescription,
    quantity_of_flowers: quantityOfFlowers,
    equipment_return: equipmentReturn
  }  
  
  $.ajax({
    url: '/events',
    method: 'POST',
    data: {event: event},
    dataType: "json"
  }).success(function(data){
    console.log(data)
    railsEvent.getEvents();
      // events.togglePages('#all_events');
    });
}

railsEvent.getEvents = function(){

  //   //Clear the posts table to avoid  duplicates posts;
  $('#listevents').empty();
  $.ajax({
    url: '/events',
    type: "GET",
    dataType:"json"
  }).success(function(data){
    console.log(data)
    $.each(data, function(index, item){
      console.log('hello tilda')
  
      var listEvents = $("<ul>"+
        "<li>" + item.event_name+"</li>"+
        "<li>" + item.event_address_number+"</li>"+
        "<li>" + item.event_street_name +"</li>"+
        "<li>" + item.event_postcode +"</li>"+
        "<li>" + item.flower_description +"</a></li>"+
        "<li>" + item.quantity_of_flowers +"</a></li>"+
        "<li>" + item.equipment_return +"</a></li>"+
        
        "<button data-id='" + item.id+"' class='btn edit_post'>Edit</button> <button data-id='" + item.id+"' class='btn btn-danger delete_post'>Delete</button>"
        );

      listEvents.appendTo("#listevents")
    });
  });
}    

railsEvent.deleteEvent = function(){

  $this = $(this);
  var eventId = $(this).data('id');

  $.ajax({
    url: '/events/' + eventId,
    type: 'DELETE',
    dataType: 'json',
  }).success(function(data){
    $this.closest('ul').remove();
  });
}

railsEvent.editEvent = function() {
  // $this = $(this);

  var eventId = $(this).data('id');
  
  $.ajax({
    url: '/events/' + eventId,
    type: 'GET',
    dataType: 'json'
  })
  .success(function(data) {
    console.log(data);
    $('#event_name').val(data.event_name);
    $('#event_description').val(data.event_description);
    $('#price').val(data.event_price);
    $('#number_events').val(data.number_events);
  })
}


$(function(){
  $('.event_submit').click(function(event){
    event.preventDefault()
    railsEvent.eventForm()
  });
  event.preventDefault()
  railsEvent.getEvents();
  $('#listevents').on('click', '.delete_post', railsEvent.deleteEvent);
  $('#listevents').on('click', '.edit_post', railsEvent.editEvent); 
})


 