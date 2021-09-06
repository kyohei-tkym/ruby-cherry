currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies['italy'] = 'euro'
puts currencies

currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
puts currencies['india']

currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies.each do |key, value|
    puts " #{key} : #{value} "
end

h = Hash.new('hello')
puts a = h[:foo]
puts b = h[:bar]
puts a.equal?(b)
a.upcase!
puts a
puts b

puts hash = {'abc': 123}

puts %s(ruby is fun)

puts %i(apple, orange, melon)
