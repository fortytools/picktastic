class PicktasticDatePickerInput < Formtastic::Inputs::StringInput

  def self.format=(jquery_date_format)
    @date_format = jquery_date_format
  end

  def self.format
    @date_format
  end

  def input_html_options
    super.merge(:class => "picktastic_date_picker", :'data-dateformat' => 'dd.mm.yy')
  end
end

