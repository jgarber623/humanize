# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "humanize"
  s.version = "3.1.0"

  s.required_ruby_version = '>= 3.1'
  s.require_paths = ["lib"]
  s.authors = ["Jack Chen", "Ryan Bigg"]
  s.email = "me@ryanbigg.com"
  s.homepage = "https://github.com/radar/humanize"
  s.summary = "Extension to Numeric to humanize numbers"
  s.license = 'MIT'

  s.files = Dir["lib/**/*"].reject { |f| File.directory?(f) }
  s.files += ["humanize.gemspec", "LICENSE.md", "README.markdown"]

  s.metadata['rubygems_mfa_required'] = 'true'
  s.metadata['bug_tracker_uri'] = "#{s.homepage}/issues"
  s.metadata['source_code_uri'] = "#{s.homepage}/tree/v#{s.version}"
end
