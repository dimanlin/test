#!/usr/local/bin/ruby
require "open-uri"


class Downloader
  def initialize(url, path)
    @url = "http://" + url
    @path = path
  end

  def exec
    threads = []

    page_content = open(@url) { |page| page_content = page.read()
      links = page_content.scan(/img src=\"(.*?)\"/).flatten.uniq
      links.each {|link|
        threads << Thread.new {
          system "wget #{link} -P #{@path}"
        }
      }
    }

    threads.each {|thread| thread.join}
  end
end


if ARGV.size == 2
  @object = Downloader.new(ARGV.first, ARGV.last)
  @object.exec
else
  puts "Invalid arguments"
end
