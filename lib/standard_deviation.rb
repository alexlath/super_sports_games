# Input ages into array
ages = [24, 30, 18, 20, 41]

# Sum each element (age) in the array (ages)
sum = 0
ages.each { |age| sum += age }

# Count number of age elements in the ages array
count = ages.count

# Divide sum by count to find average
average = sum.to_f / count

# Subtract the average from each age
differences_from_average = ages.map { |age| age - average }

# Square each difference
differences_squared = differences_from_average.map { |difference| difference ** 2 }

# Sum squared differences
differences_sq_sum = 0
differences_squared.each { |difference_sq| differences_sq_sum += difference_sq }

# Divide sum of squared differences by count
avg_squared_differences = differences_sq_sum / count

# Square root of sum of average of squared differences
std_deviation = Math.sqrt(avg_squared_differences).round(2)

p std_deviation
