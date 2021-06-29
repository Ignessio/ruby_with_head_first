=begin

hb = "Hi, guys!"
hg = "Hi, girls!"
bb = "Bye, guys."
bg = "Bye, girls."

girls = false
boys = true

if girls == true
    puts "I like pretty girls!"
    puts hg
else
    puts "No girls no fun."
    puts hb
end

=end

=begin

a = 172.169
b = 31.514
if a == b
    puts "numbers a equal"
elsif a > b
    puts "#{a} is higher"
else
    puts "#{b} is higher"
end

=end

=begin

a = 2308
b = 13

puts (a+b)/2

=end

=begin

a = 987298
if a%2 == 0
    puts "#{a} is even"
else
    puts "#{a} is odd"
end

=end

=begin

a = Time.now.wday

if a == 6 || a == 7
    puts "Today is the holyday"
else
    puts "Today is the working day"
end

=end

a = rand(11)
puts a

if a == 0
    puts "Монета встала на ребро"
elsif a != 0 && a <= 5
    puts "Выпал орел"
else
    puts "Выпала решка"
end
