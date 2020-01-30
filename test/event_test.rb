require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'


class GamesTest < Minitest::Test
  def test_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_instance_of Event, event
  end

  def test_it_has_a_name
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal "Curling", event.name
  end

  def test_it_has_an_ages_array
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal [24, 30, 18, 20, 41], event.ages
  end

  def test_it_can_find_max_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 41, event.max_age
  end

  def test_it_can_find_min_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 18, event.min_age
  end
end
# pry(main)> event.min_age
# #=> 18
#
# pry(main)> event.average_age
# #=> 26.6
#
# pry(main)> event.standard_deviation_age
# #=> 8.28
