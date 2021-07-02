
module Gupshup
  class Client
    # Init 
    # @gupshup = Gupshup::Client.new("APIKEY HERE","APPNAME")
    #
    # 
    # Example:
    #   >> response=@gupshup.sendWhatsAppText(from:"917834811114",to:"94778845700",body:"This is to remind you that {{1}} is due by {{2}}.")
    #   {:code=>200, :body=>{"status"=>"submitted", "messageId"=>"45c63e36-2e30-4116-aa85-66a3de6f35fa"}}
    #
    # Arguments:
    #   apikey: (String) ShoutOUT Apikey
    #   from: (String) sender ID
    #   to: (Array) receivers phone numbers
    #   body: (String) message body

    attr_reader :apikey,:appName
    def initialize(apikey,appName)
      @apikey=apikey
      @appName=appName
    end

    def sendWhatsApp(from:,to:,body:)
      return WhatspApp.send(self.apikey,from,to,JSON.generate(body),self.appName)
    end

    def sendWhatsAppText(from:,to:,body:)
      params={
        "isHSM":"true",
        "type": "text",
        "text": body
      }
        return sendWhatsApp(from:from,to:to,body:params)
    end

    def sendWhatsAppImage(from:,to:,imageUrl:,previewUrl: nil,caption: nil, filename: nil)
      params={
        "type": "image",
        "originalUrl": imageUrl
      }
      params[:previewUrl]=previewUrl|| imageUrl
      params[:caption]=caption if caption!=nil
      params[:filename]=filename if filename!=nil
      return sendWhatsApp(from:from,to:to,body:params)
    end
  end
end
require 'gupshup-sdk/whatsapp'
require 'uri'