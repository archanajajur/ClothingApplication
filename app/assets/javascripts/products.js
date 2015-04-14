
$(document).ready(function()
{
$("#sizes").change(function(){
	var size=$("#sizes").val();
	// alert(size)
$.ajax({
      type: "POST",
      url: "/get_prices",
      data: { sizes:size },
   success: function(response){
                           
                           $("#price").val(response);
                        }
        
        
    });

});

$("#qty").change(function(){
  var qty=$("#qty").val();
var regex = /^[\d -]+$/; 
if( regex.test(qty) )
 {
	
	var price=$("#price").val();
var x=qty*price;
$("#total").val(x);
                        
     }
     else
     {
      alert("enter only numbers");
     }   
    

});

});



