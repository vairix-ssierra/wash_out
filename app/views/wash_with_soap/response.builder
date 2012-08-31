xml.instruct!
xml.tag! "#{@envelope.to_s}:Envelope",  @attributes,
                                        "xmlns:tns" => @namespace do
  xml.tag! "#{@envelope}:Body" do
    key = "tns:#{@operation}#{WashOut::Engine.camelize_wsdl ? 'Response' : '_response'}"

    xml.tag! key do
      wsdl_data xml, result
    end
  end
end
