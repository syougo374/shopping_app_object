require './user'
require './grocery'
require './shopping'
require './customer'
require './seller'
groceries = []
groceries = Grocery.new("バナナ", 300),
            Grocery.new("パン", 150),
            Grocery.new("牛乳", 230),
            Grocery.new("卵", 280),
            Grocery.new("肉", 800),
            Grocery.new("魚", 500)

taro = Customer.new("山田太郎","Tokyo")
hanako = Customer.new("鈴木花子","Nagoya")
tommey = Customer.new("佐々木トミー","Kumamoto")

ichiro = Seller.new("イチロー","Aショップ")

order = taro.shopping(groceries)
ichiro.orders(order)
order = hanako.shopping(groceries)
ichiro.orders(order)
order = tommey.shopping(groceries)
ichiro.orders(order)

ichiro.orderling_list


# groceries.each do |key, value|
#   puts "商品:#{key}-価格:#{value}"
# end
# taro_name ="山田太郎"
# taro_address = "Tokyo"
