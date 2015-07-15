$(picktastic_init);

picktasticProperties = ['format', 'weekStart', 'autoclose', 'language', 'todayBtn'];
var addProperty = function(object, input, key) {
  // haml lowercases all attribute-names so we need to look up the data attributes lowercased
  var value = input.data(key.toLowerCase());
  if (value !== undefined) {
    object[key] = value;
  }
};

function initPicktasticForElement(elem, customOptions) {
  var input = $(elem);
  var options = {};

  $.each(picktasticProperties, function(idx, key) {
    addProperty(options, input, key);
  });

  input.data('picktastic-initialized', true)

  var completeOptions = $.extend({}, options, customOptions || {});
  return input.datepicker(completeOptions);
};

function picktastic_init() {
  $('input.picktastic_date_picker').each(function(idx, elem) {
    initPicktasticForElement(elem);
  });
};
