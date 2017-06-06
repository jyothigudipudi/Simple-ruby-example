
require 'nokogiri'
require 'json'

xml_file = File.read(params[:file][:tempfile])
doc = Nokogiri::XML.parse(xml_file)

array = doc.search('add').map{ |node|
  {
      Name: node['description'],
      SchemaRef: node['namespaceUri']
  }
}

array.to_json
