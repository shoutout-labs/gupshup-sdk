class Gupshup::RestClient

#     def self.postJson(apikey:,body:,url:)
# puts body.to_json
# puts url
#         uri = URI.parse(url)

#         header = {'Content-Type': 'application/json','Authorization': "Apikey #{apikey}"}
          
#         # Create the HTTP objects
#         http = Net::HTTP.new(uri.host, uri.port)
#         request = Net::HTTP::Post.new(uri.request_uri)
#         request.content_type="application/json"
#         request["Authorization"] = "Apikey #{apikey}"
#         request.body = body.to_json
        
#         # Send the request
#         response = http.request(request)
#         puts response.body
#         return response
#     end

    def self.postJson(apikey:,body:,url:)
        response = HTTP.auth("Apikey #{apikey}").post(url, 
                    :json => body
                )
              
                return JSON.parse(response.to_s)

    end

end

require "json"
require "http"