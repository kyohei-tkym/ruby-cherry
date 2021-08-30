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

status = 'error'
if status != 'ok'
    puts '何か異常があります'
end

status = 'ok'
unless status == 'ok'
    puts '何か異常があります'
else
    puts '正常です'
end

country = 'italy'
case country
when 'japan'
    puts 'こんにちは'
when 'us'
    puts 'hello'
when 'italy'
    puts 'ciao'
else
    puts '???'
end

country = '日本'
case country
when 'japan', '日本'
    puts 'こんにちは'
when 'us', 'アメリカ'
    puts 'hello'
when 'italy', 'イタリア'
    puts 'ciao'
else
    puts '???'
end

n = 11
puts n > 10 ? '10より大きい' : '10以下'

n = 9
message = n > 10 ? '10より大きい' : '10以下'
puts message

def greeting(country = 'japan')
    if country == 'japan'
        puts 'こんにちは'
    else
        puts 'hello'
    end
end

puts greeting
puts greeting('us')