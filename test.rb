=begin
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
=end

arr1 = [8, 5, 1, 3, 5, 4, 6, 7, 11]

arr1.uniq!
arr1.sort!
puts arr1[3]
puts arr1.length
puts arr1.include?(7)
puts arr1.max
print arr1
