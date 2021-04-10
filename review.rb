lines = []

File.open("reviews.txt") { |review_file| lines = review_file.readlines }

relevant_lines = lines.find_all { |line| line.include?("Truncated") }

reviews = relevant_lines.reject { |line| line.include?("--") }

#puts relevant_lines

#puts reviews

def find_adjective(string)
    words = string.split(" ")
    words[words.find_index("is") +1]
end

adjectives = reviews.map do |review|
    adjective = find_adjective(review)
    "'#{adjective.capitalize}'"
end

puts "The critics agree, Truncated is:"
print adjectives
