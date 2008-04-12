require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

import "tasks/marml_tasks.rake"

desc 'Default: run unit tests.'
task :default => [ 'marml:build:parser', :test ]

desc 'Test the Marml plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the Marml plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Marml'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
