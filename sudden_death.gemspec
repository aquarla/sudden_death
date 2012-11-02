# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sudden_death/version'

Gem::Specification.new do |gem|
  gem.name          = "sudden_death"
  gem.version       = SuddenDeath::VERSION
  gem.authors       = ["aquarla"]
  gem.email         = ["nospam@aquarla.net"]
  gem.description   = %q{突然の死}
  gem.summary       = %q{突然の死}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
