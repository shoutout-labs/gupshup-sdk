require 'minitest/autorun'
require 'gupshup'

class GupshupSdkTest < Minitest::Test
    def setup
        @gupshup = Gupshup::Client.new("APIKEY HERE")
    end
    def test_send_sms
        response=@gupshup.sendSms(from:"ShoutTEST",to:"94778845713",body:"This is a test message")
        puts response
        assert_equal "1001",
          response["status"]
    end
end