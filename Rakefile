require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new do |task|
  task.rspec_opts = ["-c", "-f progress"]
  task.pattern    = 'spec/**/*_spec.rb'
end

task default: :spec
