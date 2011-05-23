#!/usr/local/bin/ruby
require './downloader.rb'

if ARGV.size == 2
  @object = Downloader.new(ARGV.first, ARGV.last)
  @object.exec
else
  throw "Invalid arguments"
end
