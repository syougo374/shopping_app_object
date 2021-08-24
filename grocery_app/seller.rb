class Seller < User
  attr_accessor :name, :address, :shop
  include Shopping
  def initialize(name,shop)
    super
    @shop = shop
    @orders = []
  end
  def orders(order)
    @orders << order
  end
end