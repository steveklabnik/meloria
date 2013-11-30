// for more details see: http://emberjs.com/guides/models/defining-models/

Meloria.Appointment = DS.Model.extend({
  dateScheduled: DS.attr('date'),
  description: DS.attr('string'),
  customer: DS.belongsTo('Meloria.Customer')
});
