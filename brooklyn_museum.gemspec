
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "brooklyn_museum/version"

Gem::Specification.new do |spec|
  spec.name          = "brooklyn_museum"
  spec.version       = BrooklynMuseum::VERSION
  spec.authors       = ["'Timur Mishiev'"]
  spec.email         = ["'timurmishiev@gmail.com'"]

  spec.summary       = "Scrapes data from Brooklyn Museum"
  spec.description   = "Scrapes data from Brooklyn Museum"
  spec.homepage      = "https://github.com/Starcatch/learn-co-sandbox/tree/master/brooklyn_museum"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/Starcatch/learn-co-sandbox/tree/master/brooklyn_museum"
    spec.metadata["changelog_uri"] = "https://github.com/Starcatch/learn-co-sandbox/tree/master/brooklyn_museum"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"

end
