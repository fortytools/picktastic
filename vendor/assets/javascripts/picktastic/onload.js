$(picktastic_init);

picktasticProperties = ['format', 'weekStart', 'autoclose', 'language', 'todayBtn'];

function picktastic_init() {
  var addProperty = function(object, input, key) {
    // haml lowercases all attribute-names so we need to look up the data attributes lowercased
    var value = input.data(key.toLowerCase());
    if (value !== undefined) {
      object[key] = value;
    }
  };

  $('input.picktastic_date_picker').each(function(idx, elem) {
    var input = $(elem);
    var options = {};

    $.each(picktasticProperties, function(idx, key) {
      addProperty(options, input, key);
    });
    input.datepicker(options);
  });
}

