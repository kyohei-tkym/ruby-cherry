# eachで処理
(1..30).each do |i|
    if i%15==0
        puts "FizzBuzz!"
    elsif i%3==0
        puts "Fizz!"
    elsif i%5==0 
        puts "Buzz!"
    else
        puts i
    end
end

# whileで処理
i=1
while i <=30 

    if i%15==0
        puts "FizzBuzz!"
    elsif i%3==0
        puts "Fizz!"
    elsif i%5==0 
        puts "Buzz!"
    else
        puts i
    end

    i +=1
end

(1..30).each do |n|
    if n % 15 == 0
        puts "FizzBuzz"
    elsif n % 5 == 0
        puts "Buzz"
    elsif n % 3 == 0
        puts "Fizz"
    else
        puts n
    end
end
