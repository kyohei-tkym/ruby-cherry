puts 1 + 2

a = 'Hello,World!'
puts a
b = 'こんにちは'
puts b

country = 'italy'

if country == 'japan'
    puts 'こんにちは'
elsif country == 'us'
    puts 'Hello'
elsif country == 'italy'
    puts 'ciao'
else
    puts '???'
end

country = 'us'

if country == 'japan' then puts 'こんにちは'
elsif country == 'us' then puts 'Hello'
elsif country == 'italy' then puts 'ciao'
else puts '???'
end

def greeting(country)
    if country == 'japan'
        puts 'こんにちは'
    else
        puts 'hello'
    end
end

greeting('japan')
greeting('us')
