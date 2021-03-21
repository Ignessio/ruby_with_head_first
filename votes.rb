lines = []

File.open("votes.txt") do |votes|
    lines = votes.readlines
end

votes = {}

lines.each do |line|
    name = line.chomp
    if votes[name] != nil
        votes[name] += 1
    else
        votes[name] = 1
    end
end

#p lines

p votes