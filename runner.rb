# add required files
require './lib/event.rb'
require './lib/games.rb'

# Get the year from the user
p "Welcome to the Super Sports Games!! What year is it?"
year = gets.chomp

current_games = Games.new(year)

# User can create new Events and get a Summary of the Events
p "Wow, is it #{year} already? Let's add some events to this year's games."

answer = "y"

until answer == "n" do
  p "What is the name of the event?"
  event_name_parameter = gets.chomp

  p "Hmm, #{event_name_parameter}ing sounds like a tough sport! What are the ages of the participants? (age1, age2, age3...)"
  participant_ages_parameter = gets.chomp.split(', ').map { |age| age.to_i }

  current_games.add_event(Event.new(event_name_parameter, participant_ages_parameter))

  p "Thanks for the info! Do you want to add another event? (y/n)"
  answer = gets.chomp
end

p "Great series of events! Here's a summary:"
p current_games.all_events_summary
