#downloader_spec.rb
require './downloader.rb'

describe Downloader do
  describe "#score" do
    let(:downloader) { Downloader.new("www.lenta.ru", "/tmp") } 

    it "check init" do
      downloader.path.should == '/tmp'
      downloader.url.should == 'http://www.lenta.ru'
    end

  end
end
