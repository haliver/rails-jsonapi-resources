# -*- encoding: utf-8 -*-
# stub: rspec-parameterized 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-parameterized".freeze
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["tomykaira".freeze]
  s.date = "2016-12-26"
  s.description = "RSpec::Parameterized supports simple parameterized test syntax in rspec.".freeze
  s.email = ["tomykaira@gmail.com".freeze]
  s.homepage = "https://github.com/tomykaira/rspec-parameterized".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "RSpec::Parameterized supports simple parameterized test syntax in rspec. I was inspired by [udzura's mock](https://gist.github.com/1881139).".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>.freeze, ["< 4", ">= 2.13"])
      s.add_runtime_dependency(%q<parser>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<unparser>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<proc_to_ast>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<binding_of_caller>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["< 12.0.0"])
    else
      s.add_dependency(%q<rspec>.freeze, ["< 4", ">= 2.13"])
      s.add_dependency(%q<parser>.freeze, [">= 0"])
      s.add_dependency(%q<unparser>.freeze, [">= 0"])
      s.add_dependency(%q<proc_to_ast>.freeze, [">= 0"])
      s.add_dependency(%q<binding_of_caller>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["< 12.0.0"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["< 4", ">= 2.13"])
    s.add_dependency(%q<parser>.freeze, [">= 0"])
    s.add_dependency(%q<unparser>.freeze, [">= 0"])
    s.add_dependency(%q<proc_to_ast>.freeze, [">= 0"])
    s.add_dependency(%q<binding_of_caller>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["< 12.0.0"])
  end
end
