# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-markdown-block/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-markdown-block"
  spec.version       = Jekyll::MarkdownBlockVersion::VERSION
  spec.authors       = ["Brandon Mathis"]
  spec.email         = ["brandon@imathis.com"]
  spec.description   = %q{A Liquid Block which lets you use markdown in any Jekyll template.}
  spec.summary       = %q{A Liquid Block which lets you use markdown in any Jekyll template.}
  spec.homepage      = "https://github.com/imathis/jekyll-markdown-block"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "jekyll", "~> 2.0"
end
