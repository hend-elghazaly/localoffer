source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# for deploying to heroku
group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'


# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "haml"

#devise gem for login and signup
gem 'devise', '~> 4.2'

#gem for bootstrap
gem 'bootstrap-sass'

#gem for the form
gem 'mail_form', '~> 1.6'

#gem for sending form
# gem 'sendgrid-ruby'


gem 'bootstrap', '~> 4.0.0.alpha6'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

#for forgot password running on local host 5000
group :development, :test do
gem 'foreman'
end

#for calendar
gem 'fullcalendar-rails'
gem 'momentjs-rails'

#added simple form in initializer
gem 'simple_form', '~> 3.4'

#to annotate models
gem 'annotate', '~> 2.7', '>= 2.7'

#for admin to edit
# gem 'ckeditor', github: 'galetahub/ckeditor'
# gem 'paperclip'

#for admin http://codepany.com/blog/rails-5-user-accounts-with-3-types-of-roles-devise-rails_admin-cancancan/
gem 'remotipart', github: 'mshibuya/remotipart'
gem 'rails_admin', '>= 1.0.0.rc'

#https://github.com/CanCanCommunity/cancancan#mission
gem 'cancancan', '~> 1.10'

#for admin to edit
gem 'tinymce-rails'

#for testing http://railscasts.com/episodes/275-how-i-test?autoplay=true
# gem "rspec-rails", :group => [:test, :development]
# group :test do
#   gem "factory_girl_rails"
#   gem "capybara"
#   gem "guard-rspec"
# end

#http://www.cakesolutions.net/teamblogs/brief-introduction-to-rspec-and-simplecov-for-ruby
source 'https://rubygems.org'

gem 'rspec', :require => false, :group => :test
gem 'simplecov', :require => false, :group => :test

#for sharing on social media (huacnlee, 2017 Available from https://github.com/huacnlee/social-share-button [Accessed April 2017]
gem 'social-share-button', github: "huacnlee/social-share-button"
