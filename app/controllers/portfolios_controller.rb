class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		#atama yapar
		@portfolio_item = Portfolio.new
	end

	def create
		@portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))
		respond_to do |format|
			if @portfolio_item.save
				format.html{redirect_to portfolios_path, notice: 'port oluşturuldu'}
			else
				format.html{render:new}
			end
		end
	end
	 
end
