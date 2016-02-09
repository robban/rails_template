ruby '2.3.0'
source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2.3'
# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.3.18' # Need to use 0.3 version due to some loading issue in ActiveRecord, should be fixed in next rails version

gem 'haml'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# Needed for uglifier and possibly others
gem 'therubyracer',  platforms: :ruby

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# To make it work nicely on heroku
gem 'rails_12factor', group: :production

# Access an IRB console on exception pages or by using <%= console %> in views
gem 'web-console', '~> 2.0', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Needed to run the test task from the development environment
  gem 'rspec-rails'
end


group :test do
  gem 'capybara'
  gem 'capybara-email'
  gem 'capybara-fail_show', git: 'git://github.com/robban/capybara-fail_show.git'
  gem 'show_me_the_cookies' # To access cookies in capybara
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'timecop'
end
