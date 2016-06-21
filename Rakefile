require 'rake'
require 'parallel'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:single) do |task|
  task.cucumber_opts = ['--format=pretty', 'features/sample.feature']
end

task :default => :single

Cucumber::Rake::Task.new(:local) do |task|
  ENV['TASK_ID'] = "4"
  task.cucumber_opts = ['--format=pretty', 'features/local.feature']
end

task :parallel do |t, args|
  @num_parallel = 4

  Parallel.map([*1..@num_parallel], :in_processes => @num_parallel) do |task_id|
    ENV["TASK_ID"] = (task_id - 1).to_s
    ENV['name'] = "parallel_test"

    Rake::Task["single"].invoke
    Rake::Task["single"].reenable
  end
end


task :test do |t, args|
  Rake::Task["single"].invoke
  Rake::Task["single"].reenable
end
