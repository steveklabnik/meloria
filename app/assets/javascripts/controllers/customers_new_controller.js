Meloria.CustomersNewController = Ember.ObjectController.extend({
  actions: {
    submit: function() {
      this.get('model').save().then(function(model) {
        this.transitionToRoute('customers');
      });
    },
    cancel: function() {
     alert("cancel");
    },
  },
});
