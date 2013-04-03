# encoding: utf-8

require "bundler/gem_tasks"

require 'rake/dsl_definition'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.rspec_opts = '-c -fd'
end

task :rspec => :spec
task :default => :spec
