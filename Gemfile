source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.1'

gem 'therubyracer'

gem 'activerecord-import'
gem 'mysql2', '>= 0.3.18', '< 0.5'

gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jsonapi-resources'
gem 'redis'
gem 'redis-rails'
gem 'enumerize'

group :test do
  gem 'shoulda-matchers'
  gem 'timecop'
  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'rspec-its', require: false
  gem 'factory_bot_rails'
  gem 'database_cleaner'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'rubocop', require: false
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry'
  gem 'pry-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
