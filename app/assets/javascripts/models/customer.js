// for more details see: http://emberjs.com/guides/models/defining-models/

Meloria.Customer = DS.Model.extend({
  name: DS.attr('string'),
  phone: DS.attr('string'),
  email: DS.attr('string'),
  dateOnWaitingList: DS.attr('date'),
  status: DS.attr('number'),
  local: DS.attr('boolean'),
  location: DS.attr('string'),
  credit: DS.attr('string'),
  want: DS.attr('string'),
  notes: DS.attr('string')
});
