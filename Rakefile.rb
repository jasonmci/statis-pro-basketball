desc "Get code statistics"
task :stats do
  require './utils/code_statistics'

  STATS_DIRECTORIES = [
    %w(features             features),
    %w(lib 		            lib/),
    %w(spec					spec/),
    %w(task                 task/),
    %w(utils 				utils/)
  ].collect { |name, dir| [ name, "./#{dir}" ] }.select { |name, dir| File.directory?(dir) }

  CodeStatistics.new(*STATS_DIRECTORIES).to_s

end