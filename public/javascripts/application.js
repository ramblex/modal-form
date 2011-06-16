// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  $('#create_article').click(function(e) {
    var url = $(this).attr('href');
    var dialog_form = $('<div id="dialog-form">Loading form...</div>').dialog({
      autoOpen: false,
      width: 360,
      modal: true,
      open: function() {
        return $(this).load(url);
      }
    });
    dialog_form.dialog('open');
    e.preventDefault();
  });
});
