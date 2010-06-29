package :redis do
  description 'A persistent key-value database'
  version '1.2.6'
  source "http://redis.googlecode.com/files/redis-#{version}.tar.gz" do
    custom_install 'make'

    post :install, 'cp redis-server ~/usr/bin/'
    post :install 'cp redis-cli ~/usr/bin/'
    post :install 'cp redis-stat ~/usr/bin/'
    post :install 'cp redis-benchmark ~/usr/bin/'
  end

  verify do
    has_file '/usr/bin/redis-server'
    has_file '/usr/bin/redis-cli'
    has_file '/usr/bin/redis-stat'
    has_file '/usr/bin/redis-benchmark'
  end
end