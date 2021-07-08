require 'minitest/autorun'
require 'gupshup_lib'

class GupshupLibTest < Minitest::Test
    
    def setup
        @gupshup = GupshupLib::Client.new("API KEY","APP NAME")
        @outgoing_number=""
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

    # def test_send_whatsAppFile
    #     response=@gupshup.sendWhatsAppFile(from:@source_number,to:@outgoing_number,
    #     fileUrl:"https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf",
    #     caption:"Test File",
    #     filename:"Sample.pdf"
    #     )
    #     puts response
    #     assert_equal 200,
    #       response[:code]
        
    # end
end