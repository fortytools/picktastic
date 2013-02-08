# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'picktastic/version'

Gem::Specification.new do |gem|
  gem.name          = "picktastic"
  gem.version       = Picktastic::VERSION
  gem.authors       = ["Axel Tetzlaff"]
  gem.email         = ["axel.tetzlaff@fortytools.com"]
  gem.description   = %q{Provides a formtastc input that binds the jquery datepicker to the input field}
  gem.summary       = %q{Adds a custom input picktastic_date_picker and supplies a js file that will bind the jquery datepicker widget to these inputs}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
