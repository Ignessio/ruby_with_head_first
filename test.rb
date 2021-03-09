[:foo, :bar, :baz].each.with_index(4) do |value, index|
    puts "#{index}: #{value}"
end

[:foo, :bar, :baz].each_with_index do |value, index|
    puts "#{index}: #{value}"
end
