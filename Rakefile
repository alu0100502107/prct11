require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Documentación RDOC"
task :rdoc do
  sh "rdoc"
end

