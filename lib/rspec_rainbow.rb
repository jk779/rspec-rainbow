if Gem::Version.new(RSpec::Core::Version::STRING).release >= Gem::Version.new('3.1.0')
  require 'rspec_rainbow/rspec3'
  formatter = RSpec3
else
  require 'rspec_rainbow/rspec2'
  formatter = RSpec2
end

RspecRainbow = formatter # rubocop:disable Naming/ConstantName
