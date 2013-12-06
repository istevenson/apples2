Applestoo.Views.GamesShow = Backbone.View.extend({
  el: "#game_board",
  template: JST['templates/games/show'],
  render: function() {
    this.$el.html( this.template() );
  }

});
