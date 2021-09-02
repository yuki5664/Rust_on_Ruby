# frozen_string_literal: true

require_relative "lib/scraper/version"

Gem::Specification.new do |spec|
  spec.name          = "scraper"
  spec.version       = Scraper::VERSION
  spec.authors       = ["So Koyama"]
  spec.email         = ["koyama10032009@outlook.jp"]

  spec.summary       = "Scraping library by Rust"
  spec.description   = "Write a longer description or delete this line."
  spec.homepage      = "https://test.com"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://test.com."
  spec.metadata["changelog_uri"] = "https://test.com"

  spec.files         = Dir['lib/**/*', 'src/**/*.rs', 'Cargo.toml', 'LICENSE', 'README.md']
  spec.require_paths = ["lib"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "ffi"
end
