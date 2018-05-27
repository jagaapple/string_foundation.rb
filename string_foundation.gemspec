# ==============================================================================
# STRING FOUNDATION GEMSPEC
# frozen_string_literal: true
# ==============================================================================
$:.push File.expand_path("../lib", __FILE__)
require "string_foundation/version"

Gem::Specification.new do |spec|
  spec.name                  = "string_foundation"
  spec.version               = StringFoundation::VERSION
  spec.platform              = Gem::Platform::RUBY
  spec.authors               = ["Jaga Apple"]
  spec.email                 = ["jagaapple@uniboar.com"]
  spec.homepage              = "https://github.com/jagaapple/string_foundation.rb"
  spec.summary               = "A library that extends Ruby string class."
  spec.description           = "String Foundation is a Ruby library that provides useful methods for the Ruby string class."
  spec.required_ruby_version = ">= 2.1.0"
  spec.license               = "MIT"

  spec.files         = Dir["**/*"].keep_if { |file| File.file?(file) }
  spec.test_files    = Dir["spec/**/*"]
  spec.require_paths = ["lib"]
end
