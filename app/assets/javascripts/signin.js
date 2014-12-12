$(document).ready(function(){
  $("select").change(function(){
    $( "select option:selected").each(function(){
      if($(this).attr("value")=="Customer"){
        $(".supplierinfo").hide();           
      }
      if($(this).attr("value")=="Supplier"){
        $(".supplierinfo").show();
      }  
    });
  }).change();
});