source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'geocoder'
gem "rest-client", "~> 1.6.7"
gem "hashie"

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
group :development, :test do
	gem 'sqlite3'
	gem 'ruby-debug19', :require => 'ruby-debug'
end

group :production do
 gem 'pg'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
