//= require jquery
//= require jquery_ujs
//= require_tree .

var event_source = new EventSource('/feed');

event_source.addEventListener('message', function (event) {
  $("#logging").prepend(event.data + '\n');
}, false);
