puts "Simple calculator"
30.times{print "-" }
puts
puts "First number"
num_1 = gets.chomp

puts "What u want to do"
operator = gets.chomp
puts "Second number"
num_2 = gets.chomp

def calculating(num_1, num_2, operator)
    if  operator == "*"
    return num_1.to_i * num_2.to_i
    
elsif operator == "+"
    return num_1.to_i + num_2.to_i

elsif operator == "-"
    return num_1.to_i - num_2.to_i

elsif operator == "/"
    if num_2.to_i == 0
        puts "Cannot divide by 0"
    else 
    return num_1.to_i / num_2.to_i
    end
    
else operator != "*" || "+" || "-" || "/"
    puts "Wrong operator"
end
end

 final_number = calculating(num_1, num_2, operator)

puts final_number 