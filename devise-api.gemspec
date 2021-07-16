# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'devise_token_auth/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'devise-api'
  s.version     = DeviseTokenAuth::VERSION
  s.authors     = ['Niklas Karoly']
  s.email       = ['niklas@karoly.io']
  s.homepage    = 'https://github.com/nik736/devise-api'
  s.summary     = 'Token based auth for rails, based on devise for API only applications.'
  s.license     = 'MIT'

  s.files      = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']
  s.test_files.reject! { |file| file.match(/[.log|.sqlite3]$/) }

  s.required_ruby_version = ">= 2.2.0"

  s.add_dependency 'rails', '>= 4.2.0', '< 6.2'
  s.add_dependency 'devise', '> 3.5.2', '< 5'
  s.add_dependency 'bcrypt', '~> 3.0'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'sqlite3', '~> 1.4'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'mongoid', '>= 4', '< 8'
  s.add_development_dependency 'mongoid-locker', '~> 1.0'
end
