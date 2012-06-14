[ -d rubygems.org ] || git clone git://github.com/rubygems/rubygems.org.git
cd rubygems.org
[ -f config/database.yml ] || cp config/database.yml{.example,}
[ -f config/newrelic.yml ] || touch config/newrelic.yml
bundle --local
rake db:create db:migrate
rake
