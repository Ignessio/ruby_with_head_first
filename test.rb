class One
end

class Two < One
end

class Three < Object
end

puts One.superclass
puts Two.superclass
puts Three.superclass
puts Object.superclass
