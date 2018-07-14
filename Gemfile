source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'rails', '~> 5.2.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# gem 'jquery-rails'                    # Provides jQuery and the jQuery-ujs driver
gem 'puma'                            # Web server. Usage: rails s
gem 'haml'                            # HTML Abstraction Markup Language
gem 'simple_form'                     # Forms made easy for Rails!
gem 'responders'                      # A set of responders modules to dry up
gem 'seed_dump'                       # Rails plugin to create seed data
gem 'settingson'                      # Settings management

gem 'http'                            # A fast Ruby HTTP client
gem 'faker'                           # A library for generating fake data
gem 'rails_semantic_logger'           # A feature rich logging framework

gem 'devise'                          # Flexible authentication solution for Rails with Warden
gem 'fie'                             # Frontend framework running over a WebSocket connection
# gem 'safe_ruby'                       # A safe ruby sandbox for running untrusted code
# gem 'shikashi', path: '/Users/user/Projects/Personal/shikashi'   # A ruby sandbox
gem 'shikashi', github: 'daanforever/shikashi', branch: 'bundler' # A ruby sandbox

group :development do
  # gem 'railroady'                     # Class diagram generator. Usage: rake diagram:all
  gem 'web-console'                   # Rails Console on the Browser
  gem 'byebug'                        # TODO: add comment or delete
  # gem 'better_errors'                 # Better errors handler
  # gem 'binding_of_caller'             # For better_errors
  # gem 'meta_request'                  # For RailsPanel (chrome extention)
  gem 'rack-mini-profiler'            # Rails profiler
  # gem 'brakeman'                      # Security scanner. Usage: brakeman [-o file.html]
  # gem 'bullet'                        # Query optimization # TODO need to configure
  gem 'annotate'                      # Annotate ActiveRecord models. Usage: annotate
  gem 'haml-rails'                    # Integration for HAML
end

group :development, :test do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring', require: false        # Spring speeds up development
  gem 'spring-commands-rspec'         # Implements the rspec command for Spring
end

group :test do
  gem 'rspec-rails'                   # Test suite
  gem 'factory_bot_rails'             # Fixtures replacement
  gem 'database_cleaner'              # Helper gem for rspec
  gem 'simplecov', require: false     # Code coverage
  gem 'webmock', require: false       # Library for stubbing HTTP requests
  # gem 'capybara', require: false      # Acceptance test framework for web applications
end
