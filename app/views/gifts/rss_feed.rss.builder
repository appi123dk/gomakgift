xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "고막기프트"
    xml.description "텀블러, 우산, 수건, 보조배터리, 패키지를 통해 선물이 되는 판촉물"
    xml.link root_url

    @products.each do |product|
      xml.item do
        xml.title product.title
        xml.description product.mainpage_story
        xml.pubDate product.created_at.to_s(:rfc822)
        xml.link "http://www.gomakgift.com/gifts/single_product/" + product.id.to_s
        xml.guid "http://www.gomakgift.com/gifts/single_product/" + product.id.to_s
      end
    end
  end
end