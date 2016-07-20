# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name          = "fluent-plugin-eventql"
  s.version       = '0.0.1'
  s.authors       = ["Paul Asmuth"]
  s.email         = ["paulasmuth@googlemail.com"]
  s.description   = %q{EventQL output plugin for Fluentd}
  s.summary       = %q{A buffered output plugin for fluentd and EventQL}
  s.homepage      = "https://github.com/eventql/fluent-plugin-eventql"
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency "fluentd", [">= 0.10.49", "< 2"]

  s.add_development_dependency "rake"
  s.add_development_dependency "pry"
  s.add_development_dependency "test-unit"
end
