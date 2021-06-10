=begin
def make_casserole
    puts "Preheat oven to 375 degrees"
    puts "Place #{yield} in dish"
    puts "Bake for 20 minutes"
end

make_casserole do
    "noodles, celery, and tuna"
end

make_casserole do 
    "rice, broccoli, and chicken"
end
=end

class SmallOven

    attr_accessor :contents

    def turn_on
        puts "Turning oven on."
        @state = "on"
    end
    def turn_off
        puts "Turning oven off."
        @state = "off"
    end

    def bake
        unless @state == "on"
            raise "You need to turn the oven on first!"
        end
        if @contents == nil
            raise "There's nothing in the oven!"
        end
        "dolden-brown #{contents}"
    end
end

dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_on
dinner.each do |item|
    begin
        oven.contents = item
        puts "Serving #{oven.bake}."
    rescue => error
        puts "Error: #{error.message}"
    end
end


