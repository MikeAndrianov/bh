Bh.Company = DS.Model.extend({
  name: DS.attr('string'),
  description: DS.attr('string'),

  quests: DS.hasMany('quest', {async: true})
});
