array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each do |x|
	p x
end

array.each do |x|
	if x > 5
		p x
	end
end

odd_array = array.select { |x| x % 2 == 1 }
p odd_array

array << 11
array.unshift(0)
p array

array.delete(11)
array << 3
p array

array.uniq!
p array

hash = { key1: 'value1', key2: 'value2' }
hash2 = { :key1 => 'value1', :key2 => 'value2' }

h = {a: 1, b: 2, c: 3, d: 4}
p h[:b]
h[:e] = 5
p h
h.delete_if do |k, v|
	v < 3.5
end
p h

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts

p "#{contacts["Joe Smith"][:email]}"
p "#{contacts["Sally Johnson"][:phone]}"

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
	fields.each do |field|
		hash[field] = contact_data.shift
	end
end

p contacts

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |x| x.start_with?("s") }
p arr
arr.delete_if { |x| x.start_with?("s", "w") }
p arr

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |words| words.split }
a = a.flatten
p a