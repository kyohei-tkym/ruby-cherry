# ログ出力用のメソッドを提供するモジュール
module Loggable
    private
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    include Loggable
    def title
        log 'title is called.'
        log 'A great movie'
    end
end

class User
include Loggable
    def name
        log 'name is called.'
        log 'Alice'
    end
end

product = Product.new
product.title

user = User.new
user.name

# モジュールをextendする
module Loggable
    private
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    extend Loggable
    def self.create_products(names)
        log 'create_products is called.'
    end
end

Product.create_products([])
Product.log('Hello.')