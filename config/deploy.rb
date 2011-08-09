set :application, "pilotorder"
set :repository,  "git://github.com/t0d0r/pilotorder.git"
set :deploy_to, "/tmp/pilotorder.bg"
set :user, "todor"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "rails.all4y.net"                          # Your HTTP server, Apache/etc
role :app, "rails.all4y.net"                          # This may be the same as your `Web` server
role :db,  "rails.all4y.net", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"


# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
