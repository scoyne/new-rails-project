source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

group :production do
  # Use pg as the production database for Active Record
  gem 'pg'
end

group :development do
  # Use sqlite3 as the development database for Active Record
  gem 'sqlite3'
  gem 'web-console', '~> 2.0'
end

group :developement, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'rails-controller-testing'
  gem 'shoulda'
  gem 'factory_girl_rails', '~> 4.0'
end

gem 'puma', '~> 3.0' # Use Puma as the app server
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'jquery-rails' # Use jquery as the JavaScript library
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.5' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'thor', '0.19.1'
gem 'bootstrap-sass' # Use Bootstrap SASS
gem 'figaro', '1.0' # Use Figaro to create store enviromental variiables (mostly for secure API integration)
gem 'pusher' # Use for pushing API calls
gem 'pundit' # Use Pundit for user classes / policies
gem 'faker' # Use Faker to create fake data
gem 'devise' # Use Devise for user authentication
gem 'stripe' # Use Stripe to process payments and upgrade account to premium

group :development do
  gem 'listen', '~> 3.0.5'
end
