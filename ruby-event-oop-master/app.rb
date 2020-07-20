#ruby app.rb
#puts Death
#------------------------------------------------------------------------------
# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require


# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user.rb'
require_relative 'lib/event.rb'

# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.
require "pry"

Bonnie = User.new("Parker@gmail.com", 110)
Clyde = User.new("Barrow@gmail.com", 111)

Death = Event.new("1934-05-23 15:37", 1, "death of legends", ["Parker@gmail.com", "Barrow@gmail.com"])

binding.pry