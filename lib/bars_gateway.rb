require 'net/http'
require 'json'
require 'uri'
require 'pry'

class BarsGateway
  def initialize
    @uri = URI.parse('https://chamonix-hackathon-2015.herokuapp.com/bars')
  end

  def bars_list
    response = Net::HTTP.get_response(@uri)
    JSON.parse(response.body)
  end
end
