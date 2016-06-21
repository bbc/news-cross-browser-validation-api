require 'rake'
require 'parallel'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:single) do |task|
  task.cucumber_opts = ['--format=pretty', 'features']
end

task :default => :single

task :test do |t, args|
  Rake::Task["single"].invoke
  Rake::Task["single"].reenable
end
