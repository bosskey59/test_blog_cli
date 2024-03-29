lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "blog_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "blog_cli"
  spec.version       = BlogCli::VERSION
  spec.authors       = ["KHong"]
  spec.email         = ["albtrossfacefall@gmail.com"]

  spec.summary       = 
  spec.description   = 
  spec.homepage      = 

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = "http://time.is"
  spec.metadata["source_code_uri"] = "http://time.is"
  spec.metadata["changelog_uri"] = "http://time.is"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3.2"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency 'activerecord'
  spec.add_dependency 'sqlite3'
  spec.add_dependency 'sinatra-activerecord'
end
