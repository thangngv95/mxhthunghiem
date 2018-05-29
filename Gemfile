source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.0.3"
gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "bootstrap-sass", "3.3.6"
gem "font-awesome-rails"
gem "config"
gem "devise"
gem "fog", "1.38.0"
gem "will_paginate", "3.1.0"
gem "bootstrap-will_paginate", "0.0.10"
gem "faker", "1.7.3"
gem "carrierwave"
gem "mini_magick", "3.8.0"
gem "closure_tree"

group :development, :test do
  gem "byebug", platform: :mri
end

group :test do
  gem "rspec-collection_matchers"
  gem "shoulda-matchers"
  gem "database_cleaner"
  gem "rubocop", require: false
  gem "rubocop-checkstyle_formatter", require: false
  gem "scss_lint", require: false
  gem "scss_lint_reporter_checkstyle", require: false
  gem "rails_best_practices"
  gem "brakeman", require: false
  gem "bundler-audit"
  gem "reek"
  gem "rails-controller-testing"
  gem "simplecov", require: false
  gem "rspec-activemodel-mocks"
  gem "cucumber-rails", require: false
  gem "rspec-rails"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "sqlite3"
end

group :production do
  gem "pg"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
