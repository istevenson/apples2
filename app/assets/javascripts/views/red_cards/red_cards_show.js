Applestoo.Views.RedCardsShow = Backbone.View.extend({
  el: "#red_cards",
  template: JST['templates/red_cards/show'],
  render: function() {
    this.$el.html( this.template() );
  },


  events: {
    "click": "select"
  },



  // highlight: function(){
  //   var elem = document.getElementById("red_cards");
  //   var childElems = elem.getElementsByTagName("li");
  //   $(childElems).css("background", "#660000");
  // },

  // unhighlight: function(){
  //   var elem = document.getElementById("red_cards");
  //   var childElems = elem.getElementsByTagName("li");
  //   $(childElems).css("background", "none");

  // },

  select: function(){
    // $(this).slideUp();
  }
});

