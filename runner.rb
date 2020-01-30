require './lib/event.rb'
require './lib/games.rb'

p "Welcome to the Super Sports Games!! What year is it?"
year = gets.chomp

current_games = Games.new(year)

p "Wow, is it #{year} already? Let's add some events to this year's games."
