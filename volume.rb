def volume(options)
    puts "Square is #{options[:height] * options[:width]} "
    puts "Volume is #{options[:depth] * options[:height] * options[:width]} "
end

result = volume( width: 10, height: 5, depth: 2.5 )
