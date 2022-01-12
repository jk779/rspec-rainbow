lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name                  = 'rspec-rainbow'
  spec.version               = '1.0.0'
  spec.authors               = ['Mike Coutermarsh']
  spec.email                 = ['coutermarsh.mike@gmail.com']
  spec.description           = 'the rainbow progress formatter for RSpec'
  spec.summary               = 'RSpec rainbow formatter'
  spec.homepage              = 'https://github.com/mscoutermarsh/rspec-rainbow'
  spec.license               = 'MIT'
  spec.required_ruby_version = '>= 2.7'
  spec.files                 = %w[.gitignore Gemfile LICENSE README.md Rakefile lib/rspec_rainbow.rb
                                  lib/rspec_rainbow/rspec2.rb lib/rspec_rainbow/rspec3.rb rspec_rainbow.gemspec]
  spec.executables           = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files            = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths         = ['lib']

  spec.add_dependency 'rspec', '>= 2.14.0', '< 4'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
end
