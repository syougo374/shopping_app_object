class User
  attr_accessor :name, :address
  def initialize(arg1,arg2=nil)
    @name = arg1
    @address = arg2
  end
end