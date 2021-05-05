arr = "Рассмотрим пример с подсчетом количества вхождений букв в массиве".chars

counts = Hash.new(0)
arr.each do |letter|
counts[letter] += 1
end

p counts