module User#class User
  attr_writer :name, :email

  def initialize(name, email)
    @name,@email = name, email
  end

  def name_with_label
    "name: #{@name}"
  end

  def email_with_label
    "email: #{@email}"
  end
end

class Book
  attr_writer :title, :author
  include User
  # def initialize(title, author,name, email)
  def initialize(title, author)
    @title,@author = title, author
    # binding.irb
    # self.name = name
    # self.email = email
  end

  def title_and_author
    "title: #{@title} #{@author}"
  end
end
require"./lib/shopping_app/wallet.rb"
class C
  def initialize
    @c = Book.new("tit","tt")
  end

  def instance
    @c.title_and_author
  end
end
binding.irb
c = C.new

# # user = User.new("noro", "noro@example.com")
# user = Book.new("RubyBook", "matz")
# # user.name = "noro"
# # user.email = "noro@example.com"
# puts user.name_with_label
# puts user.email_with_label
# puts user.title_and_author
# # user = User.new("taro", "taro@example.com")
# user = Book.new("RailsBook", "DHH")
# # user.name = "taro"
# # user.email = "taro@example.com"
# puts user.name_with_label
# puts user.email_with_label
# puts user.title_and_author
# # book = Book.new("RubyBook", "matz")
# # book = Book.new("RailsBook", "DHH")