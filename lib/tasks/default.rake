if Rake::Task.task_defined?(:default)
  Rake::Task['default'].clear
end

task 'default' => %w[test:unit test:integration]