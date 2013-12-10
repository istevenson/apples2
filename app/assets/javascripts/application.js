// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .



$(document).ready(function(){

  var url = window.location.href;
  var secretId;
  // var round_card;


    function regExCheck(){
      var res = /\/join/g;
      if (res.test(url) === true) {
        $(".flash").fadeIn(2000).fadeOut(5000);
      }
    }
    regExCheck();

    function resizeToFit(){
      var fontsize = $('#red_cards h3').css('font-size');
      $('#red_cards h3').css('font-size', parseFloat(fontsize) - 1);

      if($('#red_cards h3').width() >= $('div.red_clickable').width() && fontsize > 1){
        resizeToFit();
      }
    }
    resizeToFit();


    countdown('countdown', 0, 59);
    function countdown(element, minutes, seconds){
      if (element) {}
      var time = minutes*60 + seconds;
      var interval = setInterval(function(){
        var el = document.getElementById(element);
        if (el){
          if(time == 5){
            $(el).css("color", "red");
            // $(el).fadeOut(100).fadeIn(100);
          }
          if(time === 0){
            el.innerHTML = ":00";

            clearInterval(interval);
            return;
          }


          var minutes = Math.floor(time/60);
          if (minutes < 10) minutes = "0" + minutes;
          var seconds = time % 60;
          if (seconds < 10) seconds = "0" + seconds;
          var text = ":" + seconds;
          el.innerHTML = text;
          time--;
        }

      }, 1000);
    }



    function secretIdCheck(){
      var arr = url.split("");
      check = arr.splice(arr.length - 7, 7).join("");
      match = new RegExp(/[A-Za-z0-9_]{7}/);
      if (match.test(check) === true){
        secretId = check;
        getGreenCard(secretId);
      }
    }

    $("#choose_card").click(function(){
      $("#choose_card").fadeOut();
      $("#round_card_reveal").fadeIn(2250);
    });


    $('#overlay_trigger').click(function(){
      // preventDefault();
      var elem = document.getElementById('url_link');
      elem.value = window.location.href;

      $('#overlay_trigger').fadeOut();
      $('#overlay2').fadeIn(600).delay(10000).fadeOut();
      elem.select();
      $('#overlay_trigger').fadeIn();

    });



    function writeRoundCard(round_card){
      // alert(round_card);
      $("#choose_card").click(function(){

        // debugger;
        $.post("/player/:secret_id", {
          green_card_id: round_card
        }, function(responseData){
          // alert("This is the response: " + responseData);
          // if (typeof responseData.new_group_id != "undefined"){
          //   window.location = window.location.href+"find/"+responseData.new_group_id;
          // }
        });
      });
    }
    writeRoundCard();

    function submitPlayerCard(card){
      $(".red_clickable").click(function(){
        $.post("/chooser/:secret_id", {

        });
      });
    }





    // function writePlayerCard(card){
    //   $.post("/chooser/:secret_id", {


    //   }, function(responseData){
    //     if (typeof responseData.new_group_id != "undefined"){
    //       window.location = window.location.href+"find/"+responseData.new_group_id;
    //     }
    //   });
    // };

    // function writeGreenCard(cardId, secretId){
    //   $.get("/games/" + secretId, {
    //     // green_card_id: cardId,
    //     secret_id: secretId
    //   });
    // }

    // $("#option").click(function(){
    //   preventDefault();
    //   // writeNewGame();
    //   window.location = window.location.href+"/" + secret_id;

    // });

    // function writeNewGame(){
    //   $.ajax({
    //     type: "GET",
    //     url: "/games",
    //     dataType: "json",
    //     success: function(data){
    //       alert(data.new_game_id);
    //     }
    //   });
    // }
    // function writeNewGame(){
    //   $.post("/join", {
    //   }, function(responseData){
    //     if (typeof responseData.new_game_id != "undefined"){
    //       window.location = window.location.href+"/games/"+responseData[new_game_id];
    //     }
    //   });
    // }

});
