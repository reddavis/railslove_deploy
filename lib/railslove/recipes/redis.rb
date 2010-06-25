namespace :redis do

  desc "Copy redis config into shared dir"
  task :copy_config, :roles => :app do
    run "cp #{latest_release}/config/redis.conf #{shared_path}/redis.conf"
  end

  desc "Start redis server"
  task :start, :roles => :app do
    run "redis-server #{shared_path}/redis.conf"
  end

  desc "Stop redis server"
  task :stop, :roles => :app do
    run "killall redis-server"  # Because of http://code.google.com/p/redis/issues/detail?id=175
  end

end