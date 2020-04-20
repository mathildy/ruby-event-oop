# lignes très pratiques qui appellent les gems du Gemfile.
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# -> User.new dans ce fichier d'application.
require_relative 'lib/user'
require_relative 'lib/event'

# Tous les fichiers importants sont chargés
# -> User.new, Event.new, binding.pry, User.all, etc.
julie = User.new("julie@gmail.com", 18)
jean = User.new("jean@jean.com", 28)
user_1 = User.new("claude@claude.com", 75)

binding.pry