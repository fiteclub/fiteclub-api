source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'blueprinter'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'factory_bot_rails'
gem 'faker', git: 'https://github.com/faker-ruby/faker.git', branch: 'master'
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'rspec-rails'
gem 'rswag'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # faker and factory_bot moved to production, because in this specific use case
  # we need to generate data in production
  # gem 'factory_bot_rails'
  # gem 'faker', git: 'https://github.com/faker-ruby/faker.git', branch: 'master'
  gem 'rswag-specs'
end

group :development do
  gem 'amazing_print'
  gem 'guard-rspec'
  gem 'jazz_fingers'
  gem 'listen', '~> 3.3'
  gem 'pry-rails'
  gem 'ripper-tags'
  gem 'rubocop', require: false
  gem 'spring'
end

group :test do
  gem 'json_matchers'
  gem 'shoulda-matchers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
