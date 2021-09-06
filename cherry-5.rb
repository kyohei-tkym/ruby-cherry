currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies['italy'] = 'euro'
puts currencies

currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
puts currencies['india']

currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies.each do |key, value|
    puts " #{key} : #{value} "
ends