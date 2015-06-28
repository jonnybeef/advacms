class MenuController < ApplicationController
  def index
  	base_url = "https://api.appery.io/rest/1/db/collections/SS_Menu/"

  			# get request to retrieve data
		@items = HTTParty.get(base_url,
			:headers => {"X-Appery-Database-Id" => "556a91b7e4b0d4930d294754"}).parsed_response
		
  end

  def delete

  	#grab item information that needs to be deleted
  	id = params[:id]
    
  	# item = params[:item]
	# item_menu = params[:item_menu]
	# description = params[:description]
  	base_url = "https://api.appery.io/rest/1/db/collections/SS_Menu/#{id}"

# puts "THIS IS THE ID  OF THE ITEM BEING DELETED: #{id}"

  	#grab item information
  	HTTParty.delete(base_url,:body => {"id" => "#{id}"}.to_json,
			:headers => {"X-Appery-Database-Id" => "556a91b7e4b0d4930d294754","Content-Type" => "application/json"})
  	#redirect_to '/'

  end
end
