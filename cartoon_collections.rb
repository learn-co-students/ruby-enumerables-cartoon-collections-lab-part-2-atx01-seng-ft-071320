def square_array(array)
  # Use an Enumerable to square every element in the passed in array
  # Return a new array of the results
  new_array = array.map do |element| 
    element ** 2 
  end 
  new_array 
end

def summon_captain_planet(planeteer_calls)
  # Use an Enumerable to capitalize and add '!' to every element in the passed in array
  # Return a new array of the results
  new_array = planeteer_calls.map do |element| 
    element.capitalize + "!"
  end 
  new_array
end

def long_planeteer_calls(planeteer_calls)
  # Use an Enumerable to check if any string in the passed in array is greater than 4 characters long
  # Return the boolean result of this check
  planeteer_calls.any? do |element|
    element.length > 4 
  end 
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  # Use an Enumerable to check if any elements in the passed in array match the valid calls listed above 
  # Return the first valid call found, or return nil if no valid calls are found
  valid_calls.each do |calls|
    if first_call = planeteer_calls.find do |element|
      element == calls 
      end 
      return first_call
    end 
  end 
  return nil 
end

x = find_valid_calls(["What", "is", "Fire", "Water!"])
puts x 
