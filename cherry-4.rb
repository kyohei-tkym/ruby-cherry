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

a = [1,2,3,4,5]
puts a[1..3]
a = 'abcdef'
puts a[1...3]

def liquid?(temperature)
    (0...100).include?(temperature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

def charge(age)
    case age
    when 0..5
        0
    when 6..12
        300
    when 13..18
        600
    else
        1000
    end
end
puts charge(3)
puts charge(8)
puts charge(15)
puts charge(19)

puts [*1..5]

require 'set'
a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
puts a | b
puts a - b
puts a & b
def greeting(*names)
    "#{names.join('と')}、こんにちは！"
end

puts greeting('田中さん')
puts greeting('田中さん', '鈴木さん')
puts greeting('田中さん','鈴木さん','佐藤さん')

puts %w!apple melon orange!
puts 'Ruby'.chars
puts 'Ruby,Java,Perl,PHP'.split(',')

a = Array.new(5) {'default'}
str = a[0]
str.upcase!
puts a

fruits = ['apple', 'orange', 'melon']
fruits.each_with_index{|fruits,i| puts "#{i}: #{fruits}"}

fruits = ['apple', 'orange', 'melon']
fruits.each.with_index(1) {|fruits,i| puts "#{i}: #{fruits}"}

dimentions = [
    [10,20],
    [30,40],
    [50,60],
]
areas = []
dimentions.each do |length, width|
    areas << length * width
end
puts areas

sum = 0
5.times {|n| sum += n}
puts sum

a = []
while a.size < 5
    a << 1
end
puts a

a = [10, 20, 30, 40, 50]
until a.size <= 3
    a.delete_at(-1)
end
puts a

numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
    sum += n
end
puts sum

numbers = [1, 2, 3, 4, 5]
loop do
    n = numbers.sample
    puts n
    break if n == 5
end

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
    fruits.shuffle.each do |fruits|
        numbers.shuffle.each do |n|
            puts "#{fruits}, #{n}"
            if fruits == 'orange' && n == 3
                throw :done
            end
        end
    end
end



