Bh.CompaniesRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.findAll('company');
  }
});
