#!/usr/local/bin/ruby
class User
  attr_accessor :sex, :age, :growth, :zip, :money

  def initialize
    self.sex = rand(2)
    self.age = rand(50) + 18
    self.growth = rand(100) + 100
    self.zip = rand(5000) + 1000
    self.money = rand(100)
  end
end

module Serach
  def search(objects, field, value)
    size_t first = 0; /* Первый элемент в массиве */
    size_t last = n;  /* Элемент в массиве, СЛЕДУЮЩИЙ ЗА последним */
                      /* Если просматриваемый участок непустой, first<last */
    size_t mid; 
       
    if (n==0) {
      /* массив пуст */
    } else if (a[0]>x) {
      /* не найдено; если вам надо вставить его со сдвигом - то в позицию 0  */
    } else if (a[n-1]<x) {
      /* не найдено; если вам надо вставить его со сдвигом - то в позицию n  */
    }
           
    while ( first < last ) {
      /* ВНИМАНИЕ! В отличие от более простого (first+last)/2, этот код стоек к переполнениям.  */
      mid = first + (last-first)/2;
               
      if ( x <= a[mid] ) {
        last = mid;
      } else {
        first = mid + 1;
      }
    }
                                       
    /* Если проверка n==0 в начале опущена - значит, тут раскомментировать!  */
    if (/*n!=0 &&*/ a[last] == x) {
      /* Искомый элемент найден. last - искомый индекс */
    } else {
      /* Искомый элемент не найден. Но если вам вдруг надо его вставить со сдвигом, то его место - last.  */
    }
  end
end

mas_users = []
1000.times do 
  mas_users << User.new
  puts "Create object #{mas_users.size}"
end


mas_users.sort! {|a,b| a.sex <=> b.sex}




mas_users.each {|a| puts a.sex}
