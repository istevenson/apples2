Applestoo.Views.GreenCardsShow = Backbone.View.extend({
  el: "#round_card",
  template: JST['templates/green_cards/show'],
  render: function() {
    this.$el.html( this.template() );
  }
});
