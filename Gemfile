source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'slim'
gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass', branch: '3'
gem 'font-awesome-rails'

gem 'devise'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
  gem 'pg'
  gem 'puma'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'
  gem 'dotenv-rails'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end
