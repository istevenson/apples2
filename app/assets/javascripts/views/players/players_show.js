Applestoo.Views.PlayersShow = Backbone.View.extend({
  el: "#player_score",
  template: JST['templates/players/show'],
  render: function() {
    this.$el.html( this.template() );
  },

});
