def square_array(array)
  # Use an Enumerable to square every element in the passed in array
  # Return a new array of the results
  array.map do |element|
    element * element
  end
end

def summon_captain_planet(planeteer_calls)
  # Use an Enumerable to capitalize and add '!' to every element in the passed in array
  # Return a new array of the results
  new_array = []
  planeteer_calls.each do |planeteer_calls|
    new_array.push(planeteer_calls.capitalize + "!")
  end
  new_array
end

def long_planeteer_calls(planeteer_calls)
  # Use an Enumerable to check if any string in the passed in array is greater than 4 characters long
  # Return the boolean result of this check
  planeteer_calls.any? { |word| word.length > 4 }
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  # Use an Enumerable to check if any elements in the passed in array match the valid calls listed above 
  # Return the first valid call found, or return nil if no valid calls are found
  for i in valid_calls do
    counter = 0
    while counter < planeteer_calls.length do
      if i == planeteer_calls[counter]
        return planeteer_calls[counter]
      end
      counter += 1
    end
  end
  planeteer_calls.find { |word| word == valid_calls.count}
end
