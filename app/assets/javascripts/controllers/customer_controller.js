Meloria.CustomerController = Ember.ObjectController.extend({
  actions: {
    save: function () {
      model.save();
      return value;
    },
  },
});
