Bh.CompanyEditController = Ember.ObjectController.extend({
  actions: {
    updateCompany: function() {
      var company = this.get('content');
      company.set('name', this.get('name'));
      company.set('description', this.get('description'));

      var controller = this;
      company.save().then(function() {
        console.log('company saved!');
        controller.transitionTo('company');
      }, function() {
        alert('failed to save company!');
      });
    }
  }
});
