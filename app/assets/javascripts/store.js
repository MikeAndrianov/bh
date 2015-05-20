// http://emberjs.com/guides/models/using-the-store/

Bh.Store = DS.Store.extend({
  revision: 12,
});

Bh.Adapter = DS.RESTAdapter.extend({ });

$(function() {
    var token = $('meta[name="csrf-token"]').attr('content');
    return $.ajaxPrefilter(function(options, originalOptions, xhr) {
        return xhr.setRequestHeader('X-CSRF-Token', token);
    });
});
