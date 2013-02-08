class PicktasticDatePickerInput < Formtastic::Inputs::StringInput

  cattr_accessor :format

  def input_html_options
    super.merge(:class => "picktastic_date_picker", :'data-dateformat' => PicktasticDatePickerInput.format)
  end
end

