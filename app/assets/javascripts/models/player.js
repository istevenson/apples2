Applestoo.Models.Player = Backbone.Model.extend({
  defaults : {
    name: "User",
    point_total: 0
  },

  urlRoot: "/join"
});
