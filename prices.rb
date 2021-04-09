def total(prices)
    amount = 0
    prices.each { |price| amount += price }
    amount
end

def refund(prices)
    amount = 0
    prices.each { |price| amount -= price }
    amount
end

def show_discounts(prices)
    prices.each { |price| puts format("Your discount: $%.2f", price / 3.0) }
end

prices = [3.99, 25.00, 8.99]

#puts prices

puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
show_discounts(prices)
