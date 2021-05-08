arr = "The weather is cold, cloudy and... rainy today.".chars

counts = Hash.new(0)
arr.each do |letter|
counts[letter] += 1
end

p counts