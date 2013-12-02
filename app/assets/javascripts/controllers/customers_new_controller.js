Meloria.CustomersNewController = Ember.ObjectController.extend({
  locals: [
    { name: "Local", value: 1},
    { name: "Out of town", value: 0},
  ],
  statuses: [
    { name: "Ongoing", value: 1},
    { name: "Waiting list", value: 2},
    { name: "Finished", value: 3},
    { name: "On Hold", value: 4},
  ],
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
