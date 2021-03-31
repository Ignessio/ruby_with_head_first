def each(par)
    index = 0
    while index < self.length
        yield self[index]
        index += 1
    end
end

each do |param|
puts param
end

ar = ["a", "b", "c"]

ar.each