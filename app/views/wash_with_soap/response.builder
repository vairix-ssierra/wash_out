xml.instruct!
xml.tag! "#{@envelope.to_s}:Envelope",  @attributes do
  xml.tag! "#{@envelope}:Body" do
    key = "#{@namespace}:#{@operation}#{WashOut::Engine.camelize_wsdl ? 'Response' : '_response'}"
    xml.tag! key do
      response_data xml, result
    end
  end
end
