Meloria.CustomersNewRoute = Ember.Route.extend({
  model: function() {
    return Meloria.Customer.createRecord();
  },
  setupController: function(controller, model) {
    controller.set('content', model)
  },
});
