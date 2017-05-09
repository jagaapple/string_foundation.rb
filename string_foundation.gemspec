# ==============================================================================
# STRING FOUNDATION GEMSPEC
# ==============================================================================
# frozen_string_literal: true
$:.push File.expand_path("../lib", __FILE__)
require 'string_foundation/version'

Gem::Specification.new do |spec|
  spec.name          = 'string_foundation'
  spec.version       = StringFoundation::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Brushdown']
  spec.email         = ['dev@brushdown.com']
  spec.homepage      = 'https://github.com/brushdown/string_foundation.rb'
  spec.summary       = 'A library that extends Ruby string class.'
  spec.description   = 'String Foundation is a Ruby library that provides useful methods for the Ruby string class.'
  spec.license       = 'MIT'

  spec.files         = Dir['**/*'].keep_if { |file| File.file?(file) }
  spec.test_files    = Dir['spec/**/*']
  spec.require_paths = ['lib']
end
