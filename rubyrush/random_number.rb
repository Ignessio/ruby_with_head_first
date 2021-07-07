puts "Guess your number from 0 to 15."
target = rand(16)
attempt = 0
guess = false

until attempt == 3 || guess
num = gets.to_i
attempt += 1

if num == target
    puts "you win!"
    guess = true
elsif (num - target).abs <= 2
    puts "warm"
    if num > target
        puts "Secres is less"
    else
        puts "Secret is more"
    end
elsif (num - target).abs > 2
    puts "cold"
    if num > target
        puts "Secres is less"
    else
        puts "Secret is more"
    end
end
end

unless guess
    puts "you loose, it was #{target}."
end
