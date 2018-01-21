class HomeController < ApplicationController #HomeControler inherits ApplicationConttroller.
  def index
  	
  	if params[:id]==""
  		@nothing = "Please type in the stock!"
	elsif 

		if params[:id]
			begin
				@stock = StockQuote::Stock.quote(params[:id])	
			rescue StandardError
				@errorl = "That stock symbol doesn't exist... pleasy try again."	
			end
		end		

  		# @stock = StockQuote::Stock.quote(params[:id])
  	end

  end

  def about
  
  end

end
