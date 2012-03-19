# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "feedbackable/version"

Gem::Specification.new do |s|
  s.name        = "feedbackable"
  s.version     = Feedbackable::VERSION
  s.authors     = ["Marat Galiev"]
  s.email       = ["kazanlug@gmail.com"]
  s.homepage    = "http://www.smartapps.ru"
  s.summary     = %q{Add feedback to your models}
  s.description = %q{Adding feedback action to model}

  s.rubyforge_project = "feedbackable"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
end
