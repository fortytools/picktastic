class PicktasticDatePickerInput < Formtastic::Inputs::StringInput

  cattr_accessor :format, :week_start, :language, :auto_close, :input_value_format, :today_button, :data

  @@week_start = 1
  @@format = I18n.t("date.formats.picktastic")
  @@input_value_format = I18n.t("date.formats.picktastic_input_value_format")
  @@language = I18n.locale
  @@auto_close = true
  @@today_button = "linked"
  @@data = {format: @@format,
            todaybtn: @@today_button,
            weekstart: @@week_start,
            autoclose: @@auto_close,
            language: @@language.to_s}

  def self.format_value value
    if value.present?
      I18n.l(value, format: @@input_value_format)
    end
  end

  def input_html_options
    super.merge(:class => "picktastic_date_picker",
                :value => value,
                :data => @@data)
  end

  def value
    if @object && @object.respond_to?(@method) && value = @object.send(@method)
      PicktasticDatePickerInput.format_value value
    end
  end
end
