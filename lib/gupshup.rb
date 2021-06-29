
module Gupshup
  class Client
    # Init 
    # shoutout=Shoutout::Client.new("APIKEY HERE")
    #
    # 
    # Example:
    #   >> response=shoutout.sendSms(from:"ShoutTEST",to:"94778811111",body:"This is a test message")
    #   {"status"=>"1001", "description"=>"submit success", "cost"=>1, "responses"=>[{"destination"=>"94778811111", "reference_id"=>"ca31e340-c8f2-11eb-94b7-45623297139f", "status"=>"1001", "cost"=>1}]}
    #
    # Arguments:
    #   apikey: (String) ShoutOUT Apikey
    #   from: (String) sender ID
    #   to: (Array) receivers phone numbers
    #   body: (String) message body
    attr_reader :apikey
    def initialize(apikey)
      @apikey=apikey
    end

    
    def sendSms(from:,to:,body:)
      
        return WhatspApp.send(self.apikey,from,to,body)
    end
  end
end
require 'gupshup/whatsapp'