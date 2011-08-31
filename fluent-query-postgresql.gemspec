# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fluent-query-postgresql"
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Martin Koz\u{e1}k"]
  s.date = "2011-08-31"
  s.email = "martinkozak@martinkozak.net"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "fluent-query-postgresql.gemspec",
    "lib/fluent-query/drivers/postgresql.rb",
    "lib/fluent-query/postgresql.rb"
  ]
  s.homepage = "http://github.com/martinkozak/fluent-query-postgresql"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "PostgreSQL support for the Fluent Query. Fluent Query is cool way how to write SQL queries in Ruby."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fluent-query-dbi>, [">= 0.9.0"])
      s.add_runtime_dependency(%q<fluent-query-sql>, [">= 0.9.0"])
      s.add_runtime_dependency(%q<fluent-query>, [">= 0.9.0"])
      s.add_runtime_dependency(%q<dbd-pg>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.13"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.0"])
    else
      s.add_dependency(%q<fluent-query-dbi>, [">= 0.9.0"])
      s.add_dependency(%q<fluent-query-sql>, [">= 0.9.0"])
      s.add_dependency(%q<fluent-query>, [">= 0.9.0"])
      s.add_dependency(%q<dbd-pg>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.13"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
    end
  else
    s.add_dependency(%q<fluent-query-dbi>, [">= 0.9.0"])
    s.add_dependency(%q<fluent-query-sql>, [">= 0.9.0"])
    s.add_dependency(%q<fluent-query>, [">= 0.9.0"])
    s.add_dependency(%q<dbd-pg>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.13"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
  end
end

