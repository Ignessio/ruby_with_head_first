=begin
#Calculating the average of 3 numbers (integer)
puts "Enter first number:"
a = gets.to_i
puts "Enter second number:"
b = gets.to_i
puts "Enter third number:"
c = gets.to_i
puts "The average is #{(a + b + c) / 3}"
=end

=begin
#currency exchange calculator to usd and eur
puts "Currency exchange calculator\n
USD for converting RUB to USD\n
EUR for converting RUB to EUR\n"
currency = gets.chomp
puts "Enter exchange rate for RUB to #{currency}:"
rate = gets.to_f
puts "Enter your value"
rub = gets.to_i
if currency == "USD"
    puts "You can buy: #{(rub / rate).round(2)} #{currency}"
else
    puts "You can buy: #{(rub / rate).round(2)} #{currency}"
end
=end

=begin
#currency exchange calculator rub to usd and vice versa
puts "Currency exchange calculator\n
Select:\n
1. RUB to USD\n
2. USD to RUB"

exchange = gets.to_i

if exchange == 1
    puts "What is the rate for 1 USD?"
    rate = gets.to_f
    puts "How many RUB do you have?"
    rub = gets.to_i
    puts "You can buy: #{(rub / rate).round(2)} USD"
else
    puts "What is the rate for 1 USD?"
    rate = gets.to_f
    puts "How many USD do you have?"
    usd = gets.to_i
    puts "You can buy: #{(usd * rate).round(2)} RUB"
end
=end
