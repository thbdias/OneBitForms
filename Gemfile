source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# dependencia da gem devise_token_auth
gem 'omniauth'
# autenticação de api
gem 'devise_token_auth', '~> 0.1.42'
# permite que outros sites chamem seu site/sua api
gem 'rack-cors'
# é um middleware -> ajuda a se proteger de ataques contra sua api 
gem 'rack-attack'
 
gem 'friendly_id', '~> 5.1.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'

group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_bot_rails'
  gem 'ffaker'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
