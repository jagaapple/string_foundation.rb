# ==============================================================================
# STRING FOUNDATION GEMSPEC
# ==============================================================================
$:.push File.expand_path("../lib", __FILE__)
require 'string_foundation/version'

Gem::Specification.new do |spec|
  spec.name          = 'string_foundation'
  spec.version       = StringFoundation::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Brushdown']
  spec.email         = ['dev@brushdown.com']
  spec.homepage      = 'https://github.com/brushdown/string_foundation'
  spec.summary       = 'A library for extending Ruby string class.'
  spec.description   = 'Make String class useful by providing small methods.'
  spec.license       = 'MIT'

  spec.files         = Dir['**/*'].keep_if { |file| File.file?(file) }
  spec.test_files    = Dir['spec/**/*']
  spec.require_paths = ['lib']
end
