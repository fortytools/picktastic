class PicktasticDatePickerInput < Formtastic::Inputs::StringInput

  cattr_accessor :first_day, :format

  @@first_day = 1
  @@format = I18n.t("date.formats.datepicker")

  def input_html_options
    super.merge(:class => "picktastic_date_picker")
  end
end
