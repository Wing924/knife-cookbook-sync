# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knife-cookbook-sync/version'

Gem::Specification.new do |gem|
  gem.name          = "knife-cookbook-sync"
  gem.version       = KnifeCookbookSync::VERSION
  gem.authors       = ["Erik Hollensbe"]
  gem.email         = ["erik+github@hollensbe.org"]
  gem.description   = %q{Sync only what's changed -- faster than cookbook upload}
  gem.summary       = %q{Sync only what's changed -- faster than cookbook upload}
  gem.homepage      = "https://github.com/erikh/knife-cookbook-sync"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'chef'
end
