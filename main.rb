
require 'nokogiri'
xml_file = File.read("shows.xml")
doc = Nokogiri::XML.parse(xml_file)

array = doc.search('add').map{ |node| 
  {
      Name: node['description'],
      SchemaRef: node['namespaceUri']    
  }
}
    puts array
    

