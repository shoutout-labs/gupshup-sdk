class GupshupLib::RestClient

def self.post(apikey:,body:,url:)
      
    
    url = URI(url)
    
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    request = Net::HTTP::Post.new(url)
    request["content-type"] = 'application/x-www-form-urlencoded'
    request["cache-control"] = 'no-cache'
    request["apikey"]=apikey
    request.set_form_data(body)
    # request.body='channel=whatsapp&message=%7B%22type%22:%22image%22,%22previewUrl%22:%22https://www.buildquickbots.com/whatsapp/media/sample/jpg/sample01.jpg%22,%22originalUrl%22:%22https://www.buildquickbots.com/whatsapp/media/sample/jpg/sample01.jpg%22,%22caption%22:%22%22,%22filename%22:%22Sample.jpeg%22%7D&source=917834811114&destination=94766171818&src.name=Shoutouttest'
   begin
        response = http.request(request)
        case response
            when Net::HTTPSuccess then
                return {code:200,response:JSON.parse(response.read_body)}
            else
                return {code:response.value,response:response.read_body}
        end


        rescue StandardError
            return {code:response.code, response:response.read_body}      

    end

end


end


require 'uri'
require 'net/http'
require "json"
