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

arr1 = [8, 5, 1, 3, 5, 4, 6, 7, 11]

arr1.uniq!
arr1.sort!
puts arr1[3]
puts arr1.length
puts arr1.include?(7)
puts arr1.max
print arr1

hash = {"Январь"=>31, "Февраль"=>28, "Март"=>31}
puts hash



def x(y)
    res = 0
    (0..y).each {|z| res+=z}
    res
  end
  puts x(3)

"performance".each_char do |x|
  puts x
end

hash = {one:1, two:2, three:3, four:4, five:5, six:6}
sum = 0
hash.each { |key, value| sum += value }
puts sum
=end

text = "I am learning Ruby and it is fun!"
text.downcase!
freqs = {}
freqs.default = 0

text.each_char { |char| freqs[char] += 1}

("a".."z").each {|x| puts "#{x} : #{freqs[x]}" }