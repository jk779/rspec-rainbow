if Gem::Version.new(RSpec::Core::Version::STRING).release >= Gem::Version.new('3.1.0')
  require 'rspec-rainbow/rspec3'
  formatter = RSpec3
else
  require 'rspec-rainbow/rspec2'
  formatter = RSpec2
end

Rainbow = formatter
