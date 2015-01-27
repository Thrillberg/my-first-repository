def greeting(name)
	puts "Hello, " + name
end
puts greeting("Eric")

def multiply(x, y)
	puts x * y
end
puts multiply(2, 3)

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

def caps(string)
	if string.length > 10
		return string.upcase
	end
end
puts caps("This is more than 10 characters")
puts caps("short")


def if_then_num(num)
	if num < 0
		puts "No negative numbers!"
	elsif num <= 50
		puts "Your number is less than 50."
	elsif num <= 100
		puts "Your number is less than 100."
	else
		puts "Your number is above 100."
	end
end

def case_num(num)
	case 
	when num < 0
		puts "No negative numbers!"
	when num <= 50
		puts "Your number is less than 50."
	when num <= 100
		puts "Your number is less than 100."
	else
		puts "Your number is above 100."
	end
end

puts "Enter a number, please."
number = gets.chomp.to_i
if_then_num(number)
case_num(number)