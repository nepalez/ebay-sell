Gem::Specification.new do |gem|
  gem.name     = "ebay-sell"
  gem.version  = "0.0.1"
  gem.author   = "Andrew Kozin (nepalez)"
  gem.email    = "andrew.kozin@gmail.com"
  gem.homepage = "https://github.com/nepalez/ebay-sell"
  gem.summary  = "REST HTTP sell to eBay Sell APIs"
  gem.license  = "MIT"

  gem.files            = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.test_files       = gem.files.grep(/^spec/)
  gem.extra_rdoc_files = Dir["README.md", "LICENSE", "CHANGELOG.md"]

  gem.required_ruby_version = ">= 2.3"

  gem.add_runtime_dependency "evil-client", "~> 0.2.2"
  gem.add_runtime_dependency "dry-types", "~> 0.9"

  gem.add_development_dependency "rspec", "~> 3.0"
  gem.add_development_dependency "rake", "~> 11"
  gem.add_development_dependency "webmock", "~> 2.1"
  gem.add_development_dependency "rubocop", "~> 0.44"
end
