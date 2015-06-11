class MenuController < ApplicationController
  def index
  	base_url = "https://api.appery.io/rest/1/db/collections/SS_Menu/"

  			# get request to retrieve data
		@items = HTTParty.get(base_url,
			:headers => {"X-Appery-Database-Id" => "556a91b7e4b0d4930d294754"}).parsed_response
  end
end
