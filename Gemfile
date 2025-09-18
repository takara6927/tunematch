source "https://rubygems.org"

ruby "3.1.7"

gem "rails", "7.2.2.2"

# The original asset pipeline for Rails
gem "sprockets-rails"

# Use sqlite3 as the database for Active Record
# gem "sqlite3", ">= 1.4"

# Use the Puma web server
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps
gem "importmap-rails"

# Hotwire
gem "turbo-rails"
gem "stimulus-rails"

# Build JSON APIs with ease
gem "jbuilder"

# Windows does not include zoneinfo files
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching
gem "bootsnap", require: false

group :development, :test do
  gem "sqlite3"
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
  gem "error_highlight", ">= 0.4.0", platforms: [ :ruby ]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "sass-rails"
gem "devise"
gem "kaminari"

group :production do
  gem "pg"
end

gem "cssbundling-rails", "~> 1.4"
