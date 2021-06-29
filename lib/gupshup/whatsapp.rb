class Gupshup::WhatspApp

    def self.send(apikey,from,to,body)
        puts "sending"

        # return Shoutout::RestClient.postJson(
        #     body:{
        #         'source' => from, 
        #         'transports':['sms'],
        #         'content' => {
        #         'sms'=>body
        #     }, 
        #     'destinations' => [to]},
        #     url:"https://api.getshoutout.com/coreservice/messages",
        #     apikey:apikey

        # )


        
    end
end


require 'gupshup/restclient'