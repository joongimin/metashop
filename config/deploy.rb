set :application, 'metashop-rails'
set :user, 'ubuntu'
set :github, 'joongimin/metashop-rails'
set :repo_url, "git@github.com:#{fetch(:github)}.git"
set :deploy_to, "/home/#{fetch(:user)}/#{fetch(:application)}"
set :ssh_options, forward_agent: true
set :rbenv_ruby, '2.3.1'
set :templates_path, 'lib/capistrano/tasks/templates'

def template_file(name)
  "#{fetch(:templates_path)}/#{name}"
end

def template(name, target)
  config_file = template_file(name)
  upload! StringIO.new(ERB.new(File.read(config_file)).result(binding)), target
end

after 'deploy:publishing', 'deploy:restart'

set :linked_files, %w{config/secrets.yml db/production.yml}
set :linked_dirs, %w(log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system)

namespace :deploy do
  namespace :check do
    desc 'Symlinks the linked_files'
    before :linked_files, :symlink_templates do
      on roles(:app) do
        upload! File.join(File.dirname(__FILE__), "../config/secrets.yml"), "#{shared_path}/config/secrets.yml"
      end
    end
  end
end
