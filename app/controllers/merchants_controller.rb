class MerchantsController < ApplicationController

 def index
  conn = Faraday.new(url: "http://localhost:3000")

  response = conn.get("/api/v1/merchants.json")

  response = JSON.parse(response.body, symbolize_names: true)
  
  @merchants = response[:data]

  end

  def show
    
  end

end