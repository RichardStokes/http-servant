begin
	require 'rspec/core/rake_task'

	RSpec::Core::RakeTask.new(:spec) do |t|
		t.rspec_opts = "--color --format d"
	end

	task :default => :spec
rescue LoadError
	# no rspec available
end
