# config valid for current version and patch releases of Capistrano
lock "~> 3.13.0"

set :application, "denali-medexam"
set :repo_url, "git@github.com:nightcrawler-/denali-medexam.git"
set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.7.0'

# Use .pem based auth for ssh
#set :ssh_options, {
 #   user: fetch(:user),
 #   keys: %w('/home/frederick/.ssh/fred.pem'),
 #   forward_agent: true,
 #   auth_methods: %w('publickey')
 # }

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
