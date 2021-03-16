def my_method
    puts "We're in the method, about to invoke your block!"
    yield
    puts "We're back in the method!"
end

my_method do
    puts "We're in the block!"
end

def give
    yield "2 turtle doves", "1 partridge"
end

give do |present1, present2|
    puts "My method gave to me..."
    puts present1, present2
end
