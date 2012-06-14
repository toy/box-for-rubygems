# Vagrant box for rubygems.org

    bundle install
    bundle exec vagrant basebox build -na for-rubygems && bundle exec vagrant basebox export for-rubygems && bundle exec vagrant box add for-rubygems for-rubygems.box
    bundle exec vagrant up && bundle exec vagrant ssh
    cd /vagrant && ./rubygems.org.sh && cd rubygems.org
