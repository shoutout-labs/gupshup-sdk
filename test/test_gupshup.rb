require 'minitest/autorun'
require 'gupshup'

class GupshupSdkTest < Minitest::Test
    def setup
        @gupshup = Gupshup::Client.new("ma7iaeu7htm6mezzfsbxezmjrwkqof7q")
    end
    # def test_send_whatsAppText
    #     response=@gupshup.sendWhatsAppText(from:"917834811114",to:"94778845713",body:"This is to remind you that {{1}} is due by {{2}}.",appName:"Shoutouttest")
    #     puts response
    #     assert_equal 200,
    #       response[:code]
    # end

    def test_send_whatsAppImage
        response=@gupshup.sendWhatsAppImage(from:"917834811114",to:"94766171818",appName:"Shoutouttest",
        imageUrl:"https://www.buildquickbots.com/whatsapp/media/sample/jpg/sample01.jpg",
        caption:"Test Image",
        # filename:"Sample.jpeg"
        )
        puts response
        assert_equal 200,
          response[:code]
        
    end
end