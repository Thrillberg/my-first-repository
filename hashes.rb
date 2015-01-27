# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k, v|
	k == :sisters || k== :brothers
end

new_array = immediate_family.values.flatten
p new_array

h1 = { "a" => 10, "b" => 40 }
h2 = { "b" => 45, "c" => 80 }
h1.merge(h2){|key, h1val, h2val| h2val - h1val}
p h1

h1 = { "a" => 10, "b" => 40 }
h2 = { "b" => 45, "c" => 80 }
h1.merge!(h2){|key, h1val, h2val| h1val}
p h1

hash = { key1: "value1", key2: "value2", key3: "value3" }
keys = hash.keys
values = hash.values
p keys
p values

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person.first.last
p person[:name]

p h1.has_value?(40)
p h1.has_value?(60)

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
	key = word.split('').sort.join
	if result.has_key?(key)
		result[key].push(word)
	else
		result[key] = [word]
	end
end

result.each do |k, v|
	puts "------"
	p v
end