lines = []

File.open("votes.txt") { |votes| lines = votes.readlines }

votes = Hash.new(0)

lines.each do |line|
    name = line.chomp
    name.upcase!
    votes[name] += 1
end

p lines

p votes
