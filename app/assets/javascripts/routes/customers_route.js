Meloria.CustomersRoute = Ember.Route.extend({
  model: function() { return this.store.find('customer') }
});
