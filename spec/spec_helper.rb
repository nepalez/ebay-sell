begin
  require "pry"
rescue LoadError
  nil
end

require "ebay/sell"
require "webmock/rspec"

RSpec.configure do |config|
  config.order = :random
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  # Prepare the Test namespace for constants defined in specs
  config.around(:each) do |example|
    stub_request(:any, //)
    Test = Module.new
    example.run
    Object.send :remove_const, :Test
  end
end
