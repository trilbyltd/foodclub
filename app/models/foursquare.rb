class Foursquare < ActiveRecord::Base

  def self.search_venues(text)
    client.search_venues(:ll => '52.486632,-1.895591', :radius => 1000, :query => text)
  end

  def self.client
    @client ||= Foursquare2::Client.new(:client_id => ENV[FOURSQUARE_CLIENT_ID], :client_secret => ENV[FOURSQUARE_CLIENT_SECRET])
  end


end
