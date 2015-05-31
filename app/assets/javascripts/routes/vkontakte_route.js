Bh.VkontakteRoute = Ember.Route.extend({
  beforeModel: function() {
    window.location.replace( "/users/auth/vkontakte");
  }
});