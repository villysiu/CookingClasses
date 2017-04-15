# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'CookingClasses/version'

Gem::Specification.new do |spec|
  spec.name          = "CookingClasses"
  spec.version       = CookingClasses::VERSION
  spec.authors       = ["Villy Siu"]
  spec.email         = ["villysiu@gmail.com"]

  spec.summary       = %q{Display Customers' Favorite Cooking classes at Sur La Table.}
  #spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  #spec.files         = `git ls-files -z`.split("\x0").reject do |f|
  #  f.match(%r{^(test|spec|features)/})
  #end
  spec.files         = ["lib/CookingClasses.rb", "lib/CookingClasses/cli.rb", "lib/CookingClasses/lesson.rb", "lib/CookingClasses/version.rb"]
  spec.bindir        = "bin"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables   = ["cooking_classes"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", ">=0"
  spec.add_development_dependency "pry", ">=0" 
end
