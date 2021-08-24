module Shopping
  def orderling_list
    @sum = 0
    puts "====顧客別注文リスト#{name},#{shop}===="
    @orders.each do |order|
      puts "顧客名#{order[0]},金額#{order[1]},日時#{order[2].strftime("%Y-%m-%d")}"
      @sum += order[1]
    end
    puts "----合計#{@sum}----"
    puts "==================="
  end
  private
  def grocery_list(groceries)
    puts "----食品リスト----"
    groceries.each_with_index do |grocery, i|
      puts "#{i}#{grocery.name}#{grocery.price}"
    end
  end

  def shopping_list(basket)
    @sum = 0
    puts "----買い物リスト#{@name}/#{@address}----"
    basket.each do |grocery, quantity|
      money = grocery.price * quantity
      puts "商品名: #{grocery.name},数量: #{quantity},金額: #{money}"
      @sum += money
    end
    puts "----合計金額#{@sum}----"
    puts "-----------------------"
  end
end


