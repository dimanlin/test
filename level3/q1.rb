#!/usr/local/bin/ruby
mas = [1,2,3,5,6,7,9]
size_mas_original = mas.size + 2 # По условию мы знаем что пропущенны 2 числа, вычисляем размер оригенального массива
mas_original = (mas.first..size_mas_original).to_a # Строим оригенальный массив
puts (mas_original - mas).inspect # Вычитаем из оригенального массива наш массив
