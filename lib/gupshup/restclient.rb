class Gupshup::RestClient

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
   
    response = http.request(request)
    puts response.read_body
    return response
end

    # def self.post(apikey:,body:,url:)
    #     response = HTTP.headers(:apikey=>apikey).post(url, 
    #                 :form => body
    #             )
    #           puts response.to_s
    #             return {:code=>response.code,:body=>response.code==200?JSON.parse(response.to_s):response.to_s}
  

    # end

end


require 'uri'
require 'net/http'
    

require "json"
require "http"