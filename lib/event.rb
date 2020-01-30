class Event
  attr_reader :name, :ages

  def initialize(event_name_parameter, participant_ages_parameter)
    @name = event_name_parameter
    @ages = participant_ages_parameter
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    sum = 0
    @ages.each { |age| sum += age }
    count = @ages.count
    sum.to_f / count
  end

  def standard_deviation_age
    average = average_age
    differences_from_average = @ages.map { |age| age - average }
    differences_squared = differences_from_average.map { |difference| difference ** 2 }
    differences_sq_sum = 0
    differences_squared.each { |difference_sq| differences_sq_sum += difference_sq }
    avg_squared_differences = differences_sq_sum / @ages.count
    std_deviation = Math.sqrt(avg_squared_differences).round(2)
  end
end
