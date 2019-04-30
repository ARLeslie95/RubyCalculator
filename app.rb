def basic_calc n1,n2,op
  exprsn = "#{n1.to_f}#{op}#{n2.to_f}"
  result = eval(exprsn)
  puts "The result is #{result}"
end

def adv_calc op,n1, n2 =0
  if op == "s"
    result = Math.sqrt(n1.to_f)
    puts "The result is #{result}"
  elsif op == "p"
    result = n1.to_f**n2.to_f
    puts "The result is #{result}"
  end
end

def bmi_calc height,weight,sys
  if sys == "m"
    result = height.to_f / (weight.to_f ** 2)*100
    puts "The result is #{result}"

  elsif sys == "i"
    result = 703 * weight.to_f / (height.to_f ** 2)
    puts "The result is #{result}"
  end
end

def calc
  puts "Welcome to Ruby Calculator!"
  puts "Would you like to use our Basic, Advanced or BMI Calculator?"
  puts "Type b for basic, a for advanced, bmi for bmi"
  choice = gets.chomp
  if choice == "b"
    puts "You are now in the Basic Calculator. Please type the first number you'd like to operate on:"
    n1 = gets.chomp
    puts "Please enter the operation you'd like to use:"
    op = gets.chomp
    puts "Now enter the final number:"
    n2 = gets.chomp
    basic_calc n1, n2, op
  elsif choice == "a"
    puts "You are now in the Advanced Calculator. Would you like to use the Square Root or Power function?"
    puts "Type s for Square Root, p for Power:"
    op = gets.chomp
    if op == "s"
      puts "Please type the number you'd like to find the root of:"
      n1 = gets.chomp
      adv_calc op, n1
    elsif op =="p"
      puts "Please type the number you'd like to operate on:"
      n1 = gets.chomp
      puts "Please type the power you'd like to raise it to:"
      n2 = gets.chomp
      adv_calc op,n1,n2
    end
  end

end

calc
