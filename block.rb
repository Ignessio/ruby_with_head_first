def my_method
    puts "We're in the method, about to invoke your block!"
    yield
    puts "We're back in the method!"
end

my_method { puts "We're in the block!" }

def give
    yield "2 turtle doves", "1 partridge", "3 hamsters"
end

give do |arg1, arg2, arg3|
    puts "My method gave to me..."
    puts "#{arg1}, #{arg2}, #{arg3}"
end
