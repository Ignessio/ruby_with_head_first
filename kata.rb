=begin
#hex string to decimal integer conversion
def hex_to_dec(hex)
    hex.to_i(16)
end
    
=end
=begin
# take integer and provide "Even" for even number and "Odd" for odd number.
def even_or_odd(number)
    if number%2 == 0
        return "Even"
    else
        return "Odd"
    end
end
=end

=begin
Write a function findNeedle() that takes an array full of junk but containing one "needle"

After your function finds the needle it should return a message (as a string) that says:

"found the needle at position " plus the index it found the needle, so:

find_needle(['hay', 'junk', 'hay', 'hay', 'moreJunk', 'needle', 'randomJunk'])
should return "found the needle at position 5"

def find_needle(haystack)
    puts "found the needle at position #{haystack.find_index("needle")}"
end


find_needle(['3', '123124234', nil, 'needle', 'world', 'hay', 2, '3', true, false])
=end

