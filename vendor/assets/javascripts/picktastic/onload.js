$(picktastic_init)

function picktastic_init() { 
  var inputs = $('input.picktastic_date_picker');
  if (inputs.length  > 0) {

    var format = $(inputs[0]).data('dateformat');
    var options = {};
    if (format != '') {
      options = { dateFormat: format}
    }
    inputs.datepicker(options); 
  }
}
