#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'rake/dsl_definition'
require 'rake'

# For minitest
require 'rake/testtask'
Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

# Scrabble Challenge default rake task
task default: [:test]

