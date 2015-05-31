Bh.Router.map(function() {
  this.route('about');

  this.resource('posts', function() {
    this.route('new');
  });

  this.resource('companies', function(){
    this.resource('company', { path: '/:company_id'}, function(){
      this.route('edit');
    });
  });


  this.resource('post', {path: 'post/:post_id'}, function() {
    this.route('edit');
  });

  this.route('sign_in');
  this.route('sign_out');
  this.route('vkontakte')
});
