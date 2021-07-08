class GupshupLib::WhatspApp

    def self.send(apikey,from,to,body,appName)
        
        return GupshupLib::RestClient.post(
            body:{
                "source" => from, 
                "channel"=> "whatsapp",
                "message" => body, 
                "destination" => to,
                "src.name"=> appName
            },
            url:"https://api.gupshup.io/sm/api/v1/msg",
            apikey:apikey
        )
    end
end


require 'gupshup_lib/restclient'