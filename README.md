# Picktastic

Adds a custom input picktastic_date_picker and supplies a js file that will bind the jquery datepicker widget to these inputs,

## Installation

Add this line to your application's Gemfile:

    gem 'picktastic'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install picktastic

Add the following file to your javascripts that are loaded on every page, i.e. `app/assets/javascripts/application.js`

    //= require picktastic/onload

## Usage

To create a date input field use the following builder
    
      = f.input :starts_at, as: :picktastic_date_picker

To force a different date format for the datepicker create an initializer (i.e. `config/initializers/datepicker.rb`) where you set a format string in the jquery format:

    PicktasticDatePickerInput::format = 'dd.mm.yy' 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
