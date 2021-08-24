require_relative "item_manager"
require_relative "ownable"
require_relative "item"
require_relative "wallet"
require_relative "seller"

class Cart #< Wallet
  include ItemManager
  include Ownable
  def initialize(owner)
    self.owner = owner
    # super(owner)
    #上記でいつもターミナルでやってる hoge.name = "書き換え"これをインスタンス化と同時にやっている処理
    @items = []
    # @wallet = Wallet.new(owner)
  end

  def items
    # Cartにとってのitemsは自身の@itemsとしたいため、ItemManagerのitemsメソッドをオーバーライドします。
    # CartインスタンスがItemインスタンスを持つときは、オーナー権限の移譲をさせることなく、自身の@itemsに格納(Cart#add)するだけだからです。
    @items
  end

  def add(item)
    @items << item
  end

  def total_amount
    @items.sum(&:price)
  end

  def check_out
    # binding.irb
    return if owner.wallet.balance < total_amount
    items.each do |item|
      price = self.owner.wallet.withdraw(item.price)
      item.owner.wallet.deposit(price)
      item.owner = self.owner
      # binding.irb
    end
    items.clear
    # item.owner.wallet.balacne += self.owner.wallet.withdraw(total_amount)
  # ## 要件
  #   - カートの中身（Cart#items）のすべてのアイテムの購入金額が、カートのオーナーのウォレットからアイテムのオーナーのウォレットに移されること。
  #   - カートの中身（Cart#items）のすべてのアイテムのオーナー権限が、カートのオーナーに移されること。
  #   - カートの中身（Cart#items）が空になること。

  # ## ヒント
  #   - カートのオーナーのウォレット ==> self.owner.wallet
  #   - アイテムのオーナーのウォレット ==> item.owner.wallet
  #   - お金が移されるということ ==> (？)のウォレットからその分を引き出して、(？)のウォレットにその分を入金するということ
  #   - アイテムのオーナー権限がカートのオーナーに移されること ==> オーナーの書き換え(item.owner = ?)
  end

end
