require_relative "user"
#seller 売り手

class Seller < User
  def initialize(name)
    super(name)
    # @name = name
    # @wallet = Wallet.new(self) 
    
     # superの役割について確認したい場合は[https://diver.diveintocode.jp/curriculums/2360]のテキストを参考にしてください。
  end

end