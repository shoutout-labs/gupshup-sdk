require 'minitest/autorun'
require 'gupshup'

class GupshupSdkTest < Minitest::Test
    def setup
        @gupshup = Gupshup::Client.new("APIKEY")
    end
    def test_send_whatsApp
        response=@gupshup.sendWhatsApp(from:"917834811114",to:"94778845713",body:"This is to remind you that {{1}} is due by {{2}}.",appName:"Shoutouttest")
        puts response
        assert_equal 200,
          response[:code]
    end
end