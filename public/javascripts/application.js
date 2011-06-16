// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  $('#create_article').click(function(e) {
    console.log('Create an article!');
    e.preventDefault();
  });
});
