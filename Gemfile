source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.1.5'
gem 'puma', '3.11.3'
gem 'sass-rails', '5.0.7'
gem 'uglifier', '4.1.8'
gem 'coffee-rails', '4.2.2'
gem 'turbolinks', '5.1.0'
gem 'jbuilder', '2.7.0'

# rails-i18n（国際化）
gem 'rails-i18n'

group :development, :test do
  gem 'sqlite3', '1.3.13'
  gem 'byebug', '10.0.2', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '3.5.1'
  gem 'listen', '3.1.5'
  gem 'spring', '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest-reporters', '1.1.14'
  gem 'guard', '2.13.0'
  gem 'guard-minitest', '2.4.4'
end

group :production do
  gem 'pg', '0.18.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
