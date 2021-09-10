#ハッシュと配列
users = []
users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
users << { first_name: 'Bob', last_name: 'Python', age: 30 }

def full_name(user)
    "#{user[:first_name]} #{user[:last_name]}"
end

users.each do |user|
    puts  "氏名: #{full_name(user)}、 年齢: #{user[:age]}"
end

#クラスで作成
class User
    attr_reader :first_name, :last_name, :age

    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'python', 30)

def full_name(user)
    "#{user.first_name} #{user.last_name}"
end

users.each do |user|
    puts "氏名: #{full_name(user)}、　年齢: #{user.age}"
end

# インスタンスメソッド
class User
    def initialize(name)
        @name = name
    end

    def hello
        "Hello, I am #{@name}"
    end
end
user = User.new('Alice')
puts user.hello

# インスタンスメソッドの外部参照・保存
class User
    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def name=(value)
        @name = value
    end
end
user = User.new('Alice')
user.name = 'Bob'
puts user.name

# attr_accessorメソッド
class User
    attr_accessor :name
    
    def initialize(name)
        @name
    end
end
user = User.new('Alice')
user.name = 'Bob'
puts user.name

# クラスメソッド
class User
    def initialize(name)
        @name = name
    end

    def self.create_users(names)
        names.map do |name|
            User.new(name)
        end
    end

    def hello
        "Hello, I am #{@name}"
    end
end
names = ['Alice', 'Bob', 'Carol']
users = User.create_users(names)
users.each do |user|
    puts user.hello
end

# 定数
class Product
    DEFAULT_PRICE = 0
    
    attr_reader :name, :price

    def initialize(name, price = DEFAULT_PRICE)
        @name = name
        @price = price
    end
end
product = Product.new('A free movie')
puts product.price