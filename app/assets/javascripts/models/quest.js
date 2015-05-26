Bh.Quest = DS.Model.extend({
  name: DS.attr('string'),
  description: DS.attr('string'),
  number: DS.attr('number'),
  count: DS.attr('number'),

  company: DS.belongsTo('company')
});
