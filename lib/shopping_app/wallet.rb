require_relative "ownable.rb"
class Wallet
  attr_reader :balance
  include Ownable
  def initialize(owner)
    self.owner = owner
    @balance = 0
  end

#多分チャージするメソッド？
  def deposit(amount)
    @balance += amount.to_i
  end

#残高から支払うメソッド？
  def withdraw(amount)
    return unless @balance >= amount
    @balance -= amount.to_i
    amount
  end
end