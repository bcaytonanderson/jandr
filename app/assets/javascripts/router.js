// For more information see: http://emberjs.com/guides/routing/
'use strict';

Jandr.Router.map(function(){
  this.resource('sites');
  this.resource('site', {path: 'site/:site_id'});
  this.resource('groups', function(){
    this.resource('group', { path: '/groups/:title' });
  });
  this.resource('contents');
  this.resource('content');
});
