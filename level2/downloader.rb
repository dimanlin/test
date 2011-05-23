#!/usr/local/bin/ruby
require "open-uri"

class Downloader
  attr_accessor :url, :path
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

