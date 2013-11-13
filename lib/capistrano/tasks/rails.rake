namespace :rails do
  task :console => 'deploy:set_rails_env' do
    run_interactively_on primary(:app) do
      within release_path do
        execute :bundle, :exec, :rails, :console, fetch(:rails_env)
      end
    end
  end
  task :c => :console

  task :dbconsole => 'deploy:set_rails_env' do
    run_interactively_on primary(:app) do
      within release_path do
        execute :bundle, :exec, :rails, :dbconsole, fetch(:rails_env), '--include-password'
      end
    end
  end
  task :db => :dbconsole

  # desc "Tail the logs"
  # task :log => 'deploy:set_rails_env' do
  #   run_interactively_on primary(:app) do
  #     execute :tail, '-f', "#{shared_path}/log/#{fetch(:rails_env)}.log",
  #       ignore_exit_status: true
  #   end
  # end
end

