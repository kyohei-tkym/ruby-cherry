puts 14.divmod(3)

quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

numbers = [1,2,3,4]
sum = 0

numbers.each do |n|
    sum += n
end
puts sum

a = [1,2,3,1,2,3]
a.delete_if do |n|
    n.odd?
end
puts a

numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
    sum_value = n.even? ? n * 10 : n
    sum += sum_value
end
puts sum

numbers = [1,2,3,4,5]
new_numbers = numbers.map{|n| n*10}
puts new_numbers

numbers = [1,2,3,4,5,22,60]
even_numbers = numbers.reject{|n| n%3 == 0}
puts even_numbers

