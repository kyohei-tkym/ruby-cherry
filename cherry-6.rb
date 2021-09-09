text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT
puts text.scan(/[A-Z][A-Za-z]+/)

text = <<TEXT
私の郵便番号は1234567です。
僕の郵便番号は6770506　兵庫県西脇市板波町1234だよ。
TEXT
puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')

text = <<-TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT
puts text.scan /\d\d-\d\d\d\d-\d\d\d\d/

text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT
puts text.split(/\n/).grep(/クープ.?バ[ケゲ]ット/)

html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')
puts replaced

if '123-4567' =~ /\d{3}-\d{4}/
    puts 'マッチしました'
else
    puts 'マッチしません'
end

text = '私の誕生日は1977年7月17日です'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
puts m[:year]
puts m[:month]
puts m[:day]

puts '1977年7月17日 2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)

text = '私の誕生日は1977年7月17日です'
puts text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, 3]

text = '郵便番号は123-4567です'
puts text.slice!(/\d{3}-\d{4}/)
puts text

text = '123,456-789'
puts text.split(/,|-/)

text = '私の誕生日は1977年7月17日です'
puts text.gsub(
    /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/,
    '\k<year>-\k<month>-\k<day>'
)

text = '03-1234-5678'
case text
when /^\d{3}-\d{4}$/
    puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
    puts '日付です'
when /^\d+-\d+-\d+$/
    puts '電話番号です'
end