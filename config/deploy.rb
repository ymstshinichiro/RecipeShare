# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "RecipeShare"
set :repo_url, "git@github.com:ymstshinichiro/RecipeShare.git"

set :deploy_to, '/var/www/RecipeShare' #自分のapp_nameに変更
set :keep_releases, 3

set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.4.1'

set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

set :linked_dirs, %w{log tmp/backup tmp/pids tmp/cache tmp/sockets vendor/bundle}
set :linked_files, %w{config/secrets.yml}

set :bundle_jobs, 4

namespace :deploy do
  task :restart do
    on roles(:web, :app, :db) do |host|
      execute "source /etc/environment"
    end
    invoke 'unicorn:restart'
  end
  after :finishing, 'deploy:cleanup'
end
