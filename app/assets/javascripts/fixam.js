
$(document).ready(
  function(){
  $('.scroll-top,.scroll-top2').click(function(){
  $('body,html').animate({scrollTop:0},1000);
  return false
  })
}
)
$(document).ready(
  function(){
  $('#desktopmenu a').click(function(){
  var link = $(this).attr('href');
  var posi = $(link).offset().top;
  $('body,html').animate({scrollTop:posi},700);
  return false;
});
  })


$(document).ready(
  function(){
$('#navigatn').affix({
      offset: {
        top: $('#myCarousel,#account_right').height()-$('#navigatn').height()

        
      }
}); 

}
)



$('document').ready(
function() {
  $('.previous').click(
    function(){
      $(".ajax2").hide()
      if($(this).attr('position')=='second_form'){
      $('.first_form').show();
      $('.second_form').hide();
      }

      if($(this).attr('position')=='third_form'){
      $('.second_form').show();
      $('.information_div').hide();

      }

      if($(this).attr('position')=='fourth_form'){
      $('.fourth_form').hide();
      $('.information_div').show();

      }

          
    }
    )

  $('#state_id,#city_id,#area_id,#address_street,#place_id,#device_model,#device_type,#device_type2,#device_problem,.text3').focus(
    function(){
      $(this).css({border:'1px solid grey'})
    }

    )
  
}

  )

$(document).ready(
function(){
$(".fourth_form input[type='radio']").click(
function(){
  if($(this).val()=="sign_in"){
    $('.login_complete').show();
    $('.sign_up_complete').hide();
  }
  else if($(this).val()=="sign_up"){
    $('.sign_up_complete').show();
    $('.login_complete').hide();
  }
}
  )
}
  )



$(document).ready(
function(){
  $("#device_type").attr({name: 'device_type'})
  $("#device_type2").attr({name: 'device_type2'})
$("#device_type").change(
function(){
if($(this).val()=="Others"){
  $("#device_type2").attr({name: 'device_type'})
  $("#device_type").attr({name: 'device_type2'})
  $(this).hide();
  $("#device_type2_div2").show();
}
}
  )
}
  )

$(document).ready(
function(){
$("#order_device_type").change(
function(){
if($(this).val()=="Others"){
  $("#order_device_type").attr({name: 'order[device_type2]'})
  $("#device_type2").attr({name: 'order[device_type]'})

  $(this).hide();
  $("#device_type2_div").show();
}
}
  )
}
  )



$(document).ready(
function(){
  $("#city_id").parent().hide()
  cities=$("#city_id").html()
$("#state_id").change(
function(){

var state=$("#state_id :selected").val()

optionsstate=$(cities).filter("optgroup[label="+state+"]").html()

if (optionsstate) {
    $("#city_id").parent().show()
    $("#city_id").html(optionsstate)
    $("#city_id").prepend("<option value='' selected>select city</option>")
    $(".ajax2").hide()
  }
else{
  $("#city_id").parent().hide()
  $("#city_id").empty()
}

}
  )
}
  )


$(document).ready(
function(){
  $("#area_id").parent().hide()
  areas=$("#area_id").html()
$("#city_id").change(
function(){

var city=$("#city_id :selected").text()
optionscity=$(areas).filter("optgroup[label="+city+"]").html()


if (optionscity) {
    $("#area_id").parent().show()
    $("#area_id").html(optionscity)
    $("#area_id").prepend("<option value='' selected>select area</option>")
    $(".ajax2").hide()
  }
else{
  $("#area_id").parent().hide()
  $("#area_id").empty()
}

}
  )
}
  )


$(document).ready(
function(){
  $("#place_id").parent().hide()
  places=$("#place_id").html()
$("#area_id").change(
function(){
$("#address_street").parent().show()
var area=$("#area_id :selected").text()

optionsarea=$(places).filter("optgroup[label="+area+"]").html()


if (optionsarea) {
    $("#place_id").parent().show()
    $("#place_id").html(optionsarea)
    $("#place_id").prepend("<option value='' selected>select place</option>")
    $(".ajax2").hide()
  }
else{
  $("#place_id").parent().hide()
  $("#place_id").empty()
}



}
  )
}
  )

$(document).ready(function(){
    $("#popover,#popover2").popover({
        html : true,
        placement: 'bottom',
})

});



$(document).ready(
function(){
$("#order_device_type").change(

function(){
if($(this).val()=="Others"){

  $("#order_device_type").attr({name: 'order[device_type2]'})
  $("#device_type2").attr({name: 'order[device_type]'})

  $(this).hide();
  $("#device_type2_div").show();
}
}
  )
}
  )


$(document).ready(
function(){
  $("#device_type2").attr({name: 'order[device_type2]'})
   $("#order_device_type").attr({name: 'order[device_type]'})
$("#change_field").click(
function(){
  $("#order_device_type").attr({name: 'order[device_type]'})
  $("#device_type2").attr({name: 'order[device_type2]'})

   $("#order_device_type").prop("selectedIndex", 0);
  $("#order_device_type").show();
  $("#device_type2").val("")
  $("#device_type2").parent().hide();

}
  )
}
  )


$(document).ready(
function(){
$("#change_field2").click(
function(){
  $("#device_type").attr({name: 'device_type'})
  $("#device_type2").attr({name: 'device_type2'})
   $("#device_type").prop("selectedIndex", 0);
  $("#device_type").show();
  $("#device_type2").val("")
  $("#device_type2").parent().hide();

}
  )
}
  )






$(document).ready(
function(){
  $("#order_city").parent().hide()
  mycities=$("#order_city").html()
$("#order_state").change(
function(){

var mystate=$("#order_state :selected").text()

myoptions=$(mycities).filter("optgroup[label="+mystate+"]").html()




if (myoptions) {
    $("#order_city").parent().show()
    $("#order_city").html(myoptions)
    $("#order_city").prepend("<option value='' selected>select city</option>")

  }
else{
  $("#order_city").parent().hide()
  $("#order_city").empty()
}

}
  )
}
  )


$(document).ready(
function(){
  $("#order_area").parent().hide()
  myareas=$("#order_area").html()
$("#order_city").change(
function(){

var mycity=$("#order_city :selected").text()

myoptions=$(myareas).filter("optgroup[label="+mycity+"]").html()


if (myoptions) {
    $("#order_area").parent().show()
    $("#order_area").html(myoptions)
    $("#order_area").prepend("<option value='' selected>select area</option>")
  }
else{
  $("#order_area").parent().hide()
  $("#order_area").empty()
}

}
  )
}
  )


$(document).ready(
function(){
  $("#order_place").parent().hide()
  myplaces=$("#order_place").html()
$("#order_area").change(
function(){
$("#order_pickup_address").parent().show()
var myarea=$("#order_area :selected").text()

myoptions=$(myplaces).filter("optgroup[label="+myarea+"]").html()


if (myoptions) {
    $("#order_place").parent().show()
    $("#order_place").html(myoptions)
    $("#order_place").prepend("<option value='' selected>select place</option>")
  
 
  }
else{
  $("#order_place").parent().hide()
  $("#order_place").empty()

 
}

}
  )
}
  )


$(document).ready(
function(){
  $("#old_address").hide()
  $(".new_address_div").hide()
  $("#new_address").click(
function(){
  $(':radio').attr({checked:false})
  $(this).hide()
  $(".new_address_div").show()
  $(".old_address_div").hide()
  $("#old_address").show()
}
    )
}
  )

$(document).ready(
function(){
  $('input[name="address"]').first().prop('checked', true)
  $("#old_address").click(
function(){
  $('input[name="address"]').first().prop('checked', true)
  $("#order_state").prop("selectedIndex", 0);
  $("#order_city").parent().hide()
  $("#order_area").parent().hide()
  $("#order_place").parent().hide()
  $("#order_pickup_address").parent().hide()



  $(this).hide()
  $(".new_address_div").hide()
  $(".old_address_div").show()
  $("#new_address").show()
}
    )
}
  )





$(document).ready(
function(){
  $("#partner_city").parent().hide()
  partnercities=$("#partner_city").html()
$("#partner_state").change(
function(){

var partnerstate=$("#partner_state :selected").text()

partneroptions=$(partnercities).filter("optgroup[label="+partnerstate+"]").html()




if (partneroptions) {
    $("#partner_city").parent().show()
    $("#partner_city").html(partneroptions)
    $("#partner_city").prepend("<option value='' selected>select city</option>")

  }
else{
  $("#partner_city").parent().hide()
  $("#partner_city").empty()
}

}
  )
}
  )


$(document).ready(
function(){
$("#feed_name,#feed_email,#feed_message,#feed_mobile_no").focus(
  function(){
$(this).css({border:"1px solid silver"})
}
  )
}
)



$(document).ready(
  function () {
                $('#datetimepicker1').datetimepicker();
                
            });


$(document).ready(
    function(){
      if($("#order_order_status").val()=="scheduled"){
        $('.calendar').show()

      }
      else{
       $('.calendar').hide()
      }
    }

  )


$(document).ready(
    function(){
      $("#order_order_status").change(
        function(){
          if($("#order_order_status").val()=="scheduled"){

        $('.calendar').show()

      }
      else{
       $('.calendar').hide()
      }
    }


        )
        
  }

  )

$(document).ready(
    function(){
      if($("#order_order_status").val()=="delivered"){
        $('.repair_cost').show()

      }
      else{
       $('.repair_cost').hide()
      }
    }

  )


$(document).ready(
    function(){
      $("#order_order_status").change(
        function(){
          if($("#order_order_status").val()=="delivered"){

        $('.repair_cost').show()

      }
      else{
       $('.repair_cost').hide()
      }
    }


        )
        
  }

  )


$(document).ready(
function(){
$(".feed").submit(
  function(){
$(".ajax4").show()

}
  )
}
  )

$(document).ready(
function(){
$("#track_form").submit(
  function(){
$(".ajax3").show()
}
  )
}
  )

$(document).ready(
function(){
$(".subscriber").submit(
  function(){
$(".ajax5").show()

}
  )
}
  )





$(document).ready(
  function(){
    $(".next_submit").click(
function(){
  $(".ajax2").show()
}
      )
  }
  )
$(document).ready(
  function(){
  $('.scroll-top,.scroll-top2').click(function(){
  $('body,html').animate({scrollTop:0},1000);
  return false
  })
}
)
$(document).ready(
  function(){
  $('#desktopmenu a').click(function(){
  var link = $(this).attr('href');
  var posi = $(link).offset().top;
  $('body,html').animate({scrollTop:posi},700);
  return false;
});
  })


$(document).ready(
  function(){
$('#navigatn').affix({
      offset: {
        top: $('#myCarousel,#account_right').height()-$('#navigatn').height()

        
      }
}); 

}
)



$('document').ready(
function() {
  $('.previous').click(
    function(){
      $(".ajax2").hide()
      if($(this).attr('position')=='second_form'){
      $('.first_form').show();
      $('.second_form').hide();
      }

      if($(this).attr('position')=='third_form'){
      $('.second_form').show();
      $('.information_div').hide();

      }

      if($(this).attr('position')=='fourth_form'){
      $('.fourth_form').hide();
      $('.information_div').show();

      }

          
    }
    )

  $('#state_id,#city_id,#area_id,#address_street,#place_id,#device_model,#device_type,#device_type2,#device_problem,.text3').focus(
    function(){
      $(this).css({border:'1px solid grey'})
    }

    )
  
}

  )

$(document).ready(
function(){
$(".fourth_form input[type='radio']").click(
function(){
  if($(this).val()=="sign_in"){
    $('.login_complete').show();
    $('.sign_up_complete').hide();
  }
  else if($(this).val()=="sign_up"){
    $('.sign_up_complete').show();
    $('.login_complete').hide();
  }
}
  )
}
  )



$(document).ready(
function(){
  $("#device_type").attr({name: 'device_type'})
  $("#device_type2").attr({name: 'device_type2'})
$("#device_type").change(
function(){
if($(this).val()=="Others"){
  $("#device_type2").attr({name: 'device_type'})
  $("#device_type").attr({name: 'device_type2'})
  $(this).hide();
  $("#device_type2_div2").show();
}
}
  )
}
  )

$(document).ready(
function(){
$("#order_device_type").change(
function(){
if($(this).val()=="Others"){
  $("#order_device_type").attr({name: 'order[device_type2]'})
  $("#device_type2").attr({name: 'order[device_type]'})

  $(this).hide();
  $("#device_type2_div").show();
}
}
  )
}
  )



$(document).ready(
function(){
  $("#city_id").parent().hide()
  cities=$("#city_id").html()
$("#state_id").change(
function(){

var state=$("#state_id :selected").val()

optionsstate=$(cities).filter("optgroup[label="+state+"]").html()

if (optionsstate) {
    $("#city_id").parent().show()
    $("#city_id").html(optionsstate)
    $("#city_id").prepend("<option value='' selected>select city</option>")
    $(".ajax2").hide()
  }
else{
  $("#city_id").parent().hide()
  $("#city_id").empty()
}

}
  )
}
  )


$(document).ready(
function(){
  $("#area_id").parent().hide()
  areas=$("#area_id").html()
$("#city_id").change(
function(){

var city=$("#city_id :selected").text()
optionscity=$(areas).filter("optgroup[label="+city+"]").html()


if (optionscity) {
    $("#area_id").parent().show()
    $("#area_id").html(optionscity)
    $("#area_id").prepend("<option value='' selected>select area</option>")
    $(".ajax2").hide()
  }
else{
  $("#area_id").parent().hide()
  $("#area_id").empty()
}

}
  )
}
  )


$(document).ready(
function(){
  $("#place_id").parent().hide()
  places=$("#place_id").html()
$("#area_id").change(
function(){
$("#address_street").parent().show()
var area=$("#area_id :selected").text()

optionsarea=$(places).filter("optgroup[label="+area+"]").html()


if (optionsarea) {
    $("#place_id").parent().show()
    $("#place_id").html(optionsarea)
    $("#place_id").prepend("<option value='' selected>select place</option>")
    $(".ajax2").hide()
  }
else{
  $("#place_id").parent().hide()
  $("#place_id").empty()
}



}
  )
}
  )

$(document).ready(function(){
    $("#popover,#popover2").popover({
        html : true,
        placement: 'bottom',
})

});



$(document).ready(
function(){
$("#order_device_type").change(

function(){
if($(this).val()=="Others"){

  $("#order_device_type").attr({name: 'order[device_type2]'})
  $("#device_type2").attr({name: 'order[device_type]'})

  $(this).hide();
  $("#device_type2_div").show();
}
}
  )
}
  )


$(document).ready(
function(){
  $("#device_type2").attr({name: 'order[device_type2]'})
   $("#order_device_type").attr({name: 'order[device_type]'})
$("#change_field").click(
function(){
  $("#order_device_type").attr({name: 'order[device_type]'})
  $("#device_type2").attr({name: 'order[device_type2]'})

   $("#order_device_type").prop("selectedIndex", 0);
  $("#order_device_type").show();
  $("#device_type2").val("")
  $("#device_type2").parent().hide();

}
  )
}
  )


$(document).ready(
function(){
$("#change_field2").click(
function(){
  $("#device_type").attr({name: 'device_type'})
  $("#device_type2").attr({name: 'device_type2'})
   $("#device_type").prop("selectedIndex", 0);
  $("#device_type").show();
  $("#device_type2").val("")
  $("#device_type2").parent().hide();

}
  )
}
  )






$(document).ready(
function(){
  $("#order_city").parent().hide()
  mycities=$("#order_city").html()
$("#order_state").change(
function(){

var mystate=$("#order_state :selected").text()

myoptions=$(mycities).filter("optgroup[label="+mystate+"]").html()




if (myoptions) {
    $("#order_city").parent().show()
    $("#order_city").html(myoptions)
    $("#order_city").prepend("<option value='' selected>select city</option>")

  }
else{
  $("#order_city").parent().hide()
  $("#order_city").empty()
}

}
  )
}
  )


$(document).ready(
function(){
  $("#order_area").parent().hide()
  myareas=$("#order_area").html()
$("#order_city").change(
function(){

var mycity=$("#order_city :selected").text()

myoptions=$(myareas).filter("optgroup[label="+mycity+"]").html()


if (myoptions) {
    $("#order_area").parent().show()
    $("#order_area").html(myoptions)
    $("#order_area").prepend("<option value='' selected>select area</option>")
  }
else{
  $("#order_area").parent().hide()
  $("#order_area").empty()
}

}
  )
}
  )


$(document).ready(
function(){
  $("#order_place").parent().hide()
  myplaces=$("#order_place").html()
$("#order_area").change(
function(){
$("#order_pickup_address").parent().show()
var myarea=$("#order_area :selected").text()

myoptions=$(myplaces).filter("optgroup[label="+myarea+"]").html()


if (myoptions) {
    $("#order_place").parent().show()
    $("#order_place").html(myoptions)
    $("#order_place").prepend("<option value='' selected>select place</option>")
  
 
  }
else{
  $("#order_place").parent().hide()
  $("#order_place").empty()

 
}

}
  )
}
  )


$(document).ready(
function(){
  $("#old_address").hide()
  $(".new_address_div").hide()
  $("#new_address").click(
function(){
  $(':radio').attr({checked:false})
  $(this).hide()
  $(".new_address_div").show()
  $(".old_address_div").hide()
  $("#old_address").show()
}
    )
}
  )

$(document).ready(
function(){
  $('input[name="address"]').first().prop('checked', true)
  $("#old_address").click(
function(){
  $('input[name="address"]').first().prop('checked', true)
  $("#order_state").prop("selectedIndex", 0);
  $("#order_city").parent().hide()
  $("#order_area").parent().hide()
  $("#order_place").parent().hide()
  $("#order_pickup_address").parent().hide()



  $(this).hide()
  $(".new_address_div").hide()
  $(".old_address_div").show()
  $("#new_address").show()
}
    )
}
  )





$(document).ready(
function(){
  $("#partner_city").parent().hide()
  partnercities=$("#partner_city").html()
$("#partner_state").change(
function(){

var partnerstate=$("#partner_state :selected").text()

partneroptions=$(partnercities).filter("optgroup[label="+partnerstate+"]").html()




if (partneroptions) {
    $("#partner_city").parent().show()
    $("#partner_city").html(partneroptions)
    $("#partner_city").prepend("<option value='' selected>select city</option>")

  }
else{
  $("#partner_city").parent().hide()
  $("#partner_city").empty()
}

}
  )
}
  )


$(document).ready(
function(){
$("#feed_name,#feed_email,#feed_message,#feed_mobile_no").focus(
  function(){
$(this).css({border:"1px solid silver"})
}
  )
}
)



$(document).ready(
  function () {
                $('#datetimepicker1').datetimepicker();
                
            });


$(document).ready(
    function(){
      if($("#order_order_status").val()=="scheduled"){
        $('.calendar').show()

      }
      else{
       $('.calendar').hide()
      }
    }

  )


$(document).ready(
    function(){
      $("#order_order_status").change(
        function(){
          if($("#order_order_status").val()=="scheduled"){

        $('.calendar').show()

      }
      else{
       $('.calendar').hide()
      }
    }


        )
        
  }

  )

$(document).ready(
    function(){
      if($("#order_order_status").val()=="delivered"){
        $('.repair_cost').show()

      }
      else{
       $('.repair_cost').hide()
      }
    }

  )


$(document).ready(
    function(){
      $("#order_order_status").change(
        function(){
          if($("#order_order_status").val()=="delivered"){

        $('.repair_cost').show()

      }
      else{
       $('.repair_cost').hide()
      }
    }


        )
        
  }

  )


$(document).ready(
function(){
$(".feed").submit(
  function(){
$(".ajax4").show()

}
  )
}
  )

$(document).ready(
function(){
$("#track_form").submit(
  function(){
$(".ajax3").show()
}
  )
}
  )

$(document).ready(
function(){
$(".subscription").submit(
  function(){
$(".ajax5").show()

}
  )
}
  )





$(document).ready(
  function(){
    $(".next_submit").click(
function(){
  $(".ajax2").show()
}
      )
  }
  )




$(document).ready(
  function(){
    $("#subscription_email").focus(
function(){
  $(".subscribe_success").hide()
$(".subscribe_error").hide()
}
      )
  }
  )