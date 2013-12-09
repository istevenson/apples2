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
  var card_id;

    // function urlCheck(){
    //   if (url.match(/chooser/i) == "chooser") {
    //     $("#chooser_footer").css("position", "absolute");
    //   }
    //   secretIdCheck();
    // }
    // // urlCheck();

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
      $("#choose_card").hide();
      $("#round_card_reveal").show(2250);
    });

    // function getGreenCard(secretId){
    //   var cardId = $("#round_card_reveal h3").html();
    //   // writeGreenCard(cardId, secretId);
    // }

    // function showLink(){
    //   $('#overlay_trigger').click(function(){
    //     preventDefault();
    //     var elem = document.getElementById('url_link');
    //     elem.value = window.location.href;

    //     $('#overlay2').fadeIn(600).delay(10000).fadeOut();
    //     elem.select();
    //   });
    // }

    function writeRoundCard(roundCard){
      $(".red_clickable").click(function(){
        $.post("/chooser/:secret_id", {
          adjective: roundCard.adjective,
          description: roundCard.description
        }, function(responseData){
          // if (typeof responseData.new_group_id != "undefined"){
          //   window.location = window.location.href+"find/"+responseData.new_group_id;
          // }
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
    function writeNewGame(){
      $.post("/join", {
      }, function(responseData){
        if (typeof responseData.new_game_id != "undefined"){
          window.location = window.location.href+"/games/"+responseData[new_game_id];
        }
      });
    }

});
