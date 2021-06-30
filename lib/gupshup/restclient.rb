class Gupshup::RestClient
    def self.post(apikey:,body:,url:)
        response = HTTP.headers(:apikey=>apikey).post(url, 
                    :form => body
                )
              puts response.to_s
                return {:code=>response.code,:body=>response.code==200?JSON.parse(response.to_s):response.to_s}
  

    end

end

require "json"
require "http"