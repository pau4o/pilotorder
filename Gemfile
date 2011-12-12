source 'http://rubygems.org'

gem 'rails', '3.0.10'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# github style
gem 'css3buttons', '0.9.5'

#gem 'sqlite3-ruby', :require => 'sqlite3'
gem "mysql"

# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'
gem 'capistrano-ext'
gem 'devise' #, :path => 'vendor/devise'
gem "configatron"
gem "post_commit"
gem "will_paginate", "~> 3.0.pre2"
gem "configatron"
gem "declarative_authorization"
gem "aasm", "2.2.0"
gem "gravatar_image_tag"
gem "nifty-generators", :group => :development
gem "useragent"
gem 'jquery-rails'
gem 'rails3-jquery-autocomplete'
gem 'formtastic'
gem 'haml-rails'
gem "breadcrumbs_on_rails"
gem "gmaps4rails"

# https://github.com/marten/has_details
# gem "has_details" # , :git => 'git://github.com/marten/has_details.git'

group :development do
  # To use debugger
  # http://stackoverflow.com/questions/6432335/bundle-install-and-rbx-require-relative
  # gem 'ruby-debug' # use this line for ruby 1.8.7
  gem 'ruby-debug19' # for ruby ~> 1.9.2
  gem 'sqlite3-ruby', :require => "sqlite3"
end

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :test do
  gem 'webrat'
  gem 'rspec'
  gem 'rspec-rails'
end
gem "mocha", :group => :test
