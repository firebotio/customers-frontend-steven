$(document).ready(function() {
  $(document).on('submit', '.home-index .start form', function() {
    var form = $(this);
    $.ajax({
      data:   form.serialize(),
      method: form.attr('method'),
      url:    form.attr('action'),
      success: function(response) {
        var hide = form.closest('.hide');
        var show = hide.siblings('.show');
        hide.remove();
        show.show();
      }
    });
    return false;
  });
});
