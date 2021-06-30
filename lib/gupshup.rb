
module Gupshup
  class Client
    # Init 
    # @gupshup = Gupshup::Client.new("APIKEY HERE")
    #
    # 
    # Example:
    #   >> response=@gupshup.sendWhatsApp(from:"917834811114",to:"94778845700",body:"This is to remind you that {{1}} is due by {{2}}.",appName:"Shoutouttest")
    #   {:code=>200, :body=>{"status"=>"submitted", "messageId"=>"45c63e36-2e30-4116-aa85-66a3de6f35fa"}}
    #
    # Arguments:
    #   apikey: (String) ShoutOUT Apikey
    #   from: (String) sender ID
    #   to: (Array) receivers phone numbers
    #   body: (String) message body
    #   appName: (String) Gupshup app name
    attr_reader :apikey
    def initialize(apikey)
      @apikey=apikey
    end

    
    def sendWhatsApp(from:,to:,body:,appName:)
      
        return WhatspApp.send(self.apikey,from,to,body,appName)
    end
  end
end
require 'gupshup/whatsapp'