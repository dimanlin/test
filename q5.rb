#!/usr/local/bin/ruby
require "open-uri"
url = "http://www.lenta.ru"
path = "image"

threads = []

page_content = open(url) { |page| page_content = page.read()
  links = page_content.scan(/img src=\"(.*?)\"/).flatten.uniq
  links.each {|link|
    threads << Thread.new {
      system "wget #{link} -P #{path}"
    }
  }
}

threads.each {|thread| thread.join}
