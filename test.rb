=begin
#define handmade method each
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
=end

=begin
#array
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
=end

=begin
#hash
hash = {"Январь"=>31, "Февраль"=>28, "Март"=>31}
puts hash
=end

=begin
#define x method with argument
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

s = "some text goes here"
c = 0
s.each_char do |x| 
  c += 1 if x == "e"
end
puts c

def greet(name="")
  if name==""
    puts "Greetings!"
  else
    puts "Welcome, #{name}"
  end
end

greet(gets.chomp)

def fib(num)
  if num < 2
    num
  else
    fib(num-1) + fib(num-2)
  end
end
puts fib(4)


class Calc
  def self.sqr(x)
    puts x*x
  end
end

Calc.sqr(2)

class Player
  attr_accessor :name, :health, :power
  def initialize(n, h, pow)
    @name = n
    @health = h
    @power = pow
  end
  def isAlive
    @health > 0
  end
  def hit(opponent)
    opponent.health -= self.power
  end
  def to_s
    "#{name}: Health: #{health}, Power: #{power}"
  end
end

def fight(p1, p2)
  while p1.isAlive && p2.isAlive
    p1.hit(p2)
    p2.hit(p1)
    show_info(p1, p2)
  end
    
  if p1.isAlive 
    puts "#{p1.name} WON!" 
  elsif p2.isAlive
    puts "#{p2.name} WON!" 
  else
    puts "TIE!"
  end
end

def show_info(*p)
  p.each { |x| puts x}
end

p1 = Player.new("Player 1", 1+rand(100), 1+rand(20))
p2 = Player.new("Player 2", 1+rand(100), 1+rand(20))

# показываем информацию об игроках
show_info(p1, p2)

puts "LETS FIGHT!"
fight(p1, p2)

class Custom
def initialize x
  @x = x
end
def to_s
  @x
end
end
x = gets
p = Custom.new(x)
puts p

module Car
  class Volvo
    def initialize
      @@wheels = 4
    end
    def how_many_wheels
      puts "#{@@wheels}"
    end
  end
end

module Truck
  class Volvo
    def initialize
      @@wheels = 6
    end
    def how_many_wheels
      puts "#{@@wheels}"
    end
  end
end

car = Car::Volvo.new
car.how_many_wheels
car = Truck::Volvo.new
car.how_many_wheels

def drive(destination)
  if destination == "Hawaii"
    raise "You can't drive to Hawaii!"
  end
end

begin
drive("Hawaii")
rescue => error
  puts error.message
end

=end

=begin
#exception with rescue
class TestScoreError < StandardError
end

score = 52
begin
  if score > 60
    puts "passing grade"
  else
    raise TestScoreError, "failing grade"
  end
rescue TestScoreError => error
  puts "Received #{error.message}. Taking make-up exam..."
  score = 63
  retry
end
=end


#minitest run
=begin
require 'minitest/autorun'
class Test < Minitest::Test
  def test_true_assertion
    assert(true)
  end
  def test_false_assertion
    assert(false)
  end
end
=end

#minitest fallacy check
require 'minitest/autorun'
class TestMath < Minitest::Test
    def test_truth
        assert_equal(2 + 2, 4)
    end
    def test_fallacy
        assert_equal(2 + 2, 5)
    end
end


