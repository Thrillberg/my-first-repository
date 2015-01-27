input = 0
while input != "STOP"
	puts "Type something (hopefully STOP):"
	input = gets.chomp
end

my_array = [3, 4, 5, 6]
my_array.each_with_index do |item, index|
	puts "#{index + 1}. #{item}"
end

def to_zero(start)
	if start <= 0
		puts start
	else
		puts start
		to_zero(start-1)
	end
end

to_zero(10)

arr = [1, 3, 5, 7, 9, 11]
if arr.include?(3)
	puts "3 is in the array."
end

arr = [["test", "hello", "world"],["example", "mem"]]
puts arr.last.first

new_array = []
my_array.each do |n|
	new_array << n + 2
end
p my_array
p new_array
