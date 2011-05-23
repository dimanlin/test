#!/usr/local/bin/ruby
thread = []
thread << Thread.new {
  loop{
    sleep(1)
    puts "1 сек"
  }
}

thread << Thread.new {
  loop{
    sleep(2)
    puts "2 сек"
  }
}

thread.each {|i| i.join}

