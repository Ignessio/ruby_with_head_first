=begin
def make_casserole
    puts "Preheat oven to 375 degrees"
    ingredients = yield
    puts "Place #{ingredients} in dish"
    puts "Bake for 20 minutes"
end

make_casserole do
    "noodles, celery, and tuna"
end

make_casserole do
    "rice, broccoli, and chicken"
end

x = gets.to_i
y = gets.to_i
while x <= y
puts x
x += 1
end

=end

n = gets.to_i

# сотни
p n / 100 + n / 10 % 10 + n % 10

# десятки
#b = n / 10 % 10

# единицы
#c = n % 10
