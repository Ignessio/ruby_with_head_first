class Bird
    attr_accessor :name, :age
    def report_age
        puts "#{@name} is #{@age} years old."
    end
    def talk
        puts "#{@name} says Chirp! Chirp!"
    end
    def move (destination)
        puts "#{@name} flies to the #{destination}."
    end
end

class Dog
    attr_accessor :name, :age
    def report_age
        puts "#{@name} is #{@age} years old."
    end
    def talk
        puts "#{@name} says Bark!"
    end
    def move (destination)
        puts "#{@name} runs to the #{destination}."
    end
end

class Cat
    attr_accessor :name, :age
    def report_age
        puts "#{@name} is #{@age} years old."
    end
    def talk
        puts "#{@name} says Meaw!"
    end
    def move (destination)
        puts "#{@name} goes to the #{destination}."
    end
end

popka = Bird.new
popka.name = "Popka"
popka.age = 1
popka.report_age
popka.move("tree")
popka.talk

fido = Dog.new
fido.name = "Fido"
fido.age = 2
rex = Dog.new
rex.name = "Rex"
rex.age = 3
fido.report_age
rex.report_age
fido.talk

tom = Cat.new
tom.name = "Tom"
tom.age = 4
tom.report_age
tom.move("house")
