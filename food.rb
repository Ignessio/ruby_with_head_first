foods = Hash.new { |hash, key| hash[key] = [] }
foods['A'] << "Apple"
foods['A'] << "Avocado"
foods['B'] << "Bacon"
foods['B'] << "Bread"
p foods['A']
p foods['B']
p foods