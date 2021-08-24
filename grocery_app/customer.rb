class Customer < User
  attr_accessor :name, :address
  include Shopping
  def initialize(name,address)
    super
    @basket = []
  end
  def shopping(groceries)
    grocery_list(groceries)
    shopping_end = nil
    while shopping_end != "yes" do
      puts "商品番号選択"
      number = gets.to_i
      puts "商品数量入力"
      quantity = gets.to_i
      entry(groceries[number],quantity)
      puts "買い物終了する？yes/no"
      shopping_end = gets.chomp
    end
    shopping_list(@basket)
    @order = [name, @sum, Time.now]
  end
  private
  def entry(grocery, quantity)
    @basket << [grocery,quantity]
  end
end
