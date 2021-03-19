lines = []

File.open("reviews.txt") do |review_file|
    lines = review_file.readlines
    puts "Line 1: #{lines[0]}"
end

puts lines.length