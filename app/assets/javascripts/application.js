// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .

document.addEventListener("DOMContentLoaded",function(){
  $('.hovershow').hide();

  $('.logoish').hover(
    function(){
      $('.hovershow').slideDown(500);
    },
    function(){
      $('.hovershow').slideUp(200);
    }
  )

  // $('#carouse_About').hide();
  $('#div_By').hide();
  $('#div_For').hide();
  $('#div_Storage').hide();


  $('#cara1').click(
    function(){
      $('#div_About').show();
      $('#div_By').hide();
      $('#div_For').hide();
      $('#div_Storage').hide();
    }
  )
  $('#cara2').click(
    function(){
      $('#div_About').hide();
      $('#div_By').show();
      $('#div_For').hide();
      $('#div_Storage').hide();
    }
  )
  $('#cara3').click(
    function(){
      $('#div_About').hide();
      $('#div_By').hide();
      $('#div_For').show();
      $('#div_Storage').hide();
    }
  )

  $(document).ready(function(){
    $(".delete-arts").on("ajax:complete", function(e){
      $(e.currentTarget).parent().parent().hide()
    })
  })

  $(document).ready(function(){
    $(".delete-artists").on("ajax:complete", function(e){
      $(e.currentTarget).parent().parent().hide()
    })
  })

})
