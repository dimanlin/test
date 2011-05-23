#!/usr/local/bin/ruby
class User
  attr_accessor :sex, :age, :growth, :zip, :money

  def initialize
    self.sex = rand(1)
    self.age = rand(50) + 18
    self.growth = rand(100) + 100
    self.zip = rand(5000) + 1000
    self.money = rand(100)
  end
end

mas_users = []
10000000.times do 
  mas_users << User.new.inspect
  puts "Create object #{mas_users.size}"
end

sez = 1
age = 25
growth = 170
zip = 4444
money = 50

mas_users = mas_users.delete_if {|a| (a.zip != zip) && (a.growth != growth) && (a.money != money) && (a.age != age) && (a.sex != sex)}
puts mas_users
