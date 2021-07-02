require 'minitest/autorun'
require 'gupshup_lib'

class GupshupLibTest < Minitest::Test
    
    def setup
        @gupshup = GupshupLib::Client.new("ma7iaeu7htm6mezzfsbxezmjrwkqof7q","Shoutouttest")
        @outgoing_number="94766171818"
        @source_number="917834811114"
    end
    def test_send_whatsAppText
        response=@gupshup.sendWhatsAppText(from:@source_number,to:@outgoing_number,body:"This is to remind you that {{1}} is due by {{2}}.")
        puts response
        assert_equal 200,
          response[:code]
    end

    # def test_send_whatsAppImage
    #     response=@gupshup.sendWhatsAppImage(from:@source_number,to:@outgoing_number,
    #     imageUrl:"https://www.buildquickbots.com/whatsapp/media/sample/jpg/sample01.jpg",
    #     caption:"Test Image",
    #     # filename:"Sample.jpeg"
    #     )
    #     puts response
    #     assert_equal 200,
    #       response[:code]
        
    # end
end