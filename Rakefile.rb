desc "Get code statistics"
task :stats do
  require './utils/code_statistics'

  STATS_DIRECTORIES = [
    %w(features/support     features/support/),
    %w(lib 		            lib/),
    %w(spec					spec/),
    %w(task                 task/),
    %w(test                 test/),
    %w(unit 				unit/),
    %w(utils 				utils/)
  ].collect { |name, dir| [ name, "./#{dir}" ] }.select { |name, dir| File.directory?(dir) }

  CodeStatistics.new(*STATS_DIRECTORIES).to_s

end