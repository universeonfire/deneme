class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		#atama yapar
		@portfolio_item = Portfolio.new
	end

	def edit
		@portfolio_item = Portfolio.find(params[:id])
	end

	def show
		@portfolio_item = Portfolio.find(params[:id])	
		respond_to do |format|
			 
				 
			format.html{render :show}
			 
		end
	end

	def create
		@portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))
		respond_to do |format|
			if @portfolio_item.save
				format.html{redirect_to portfolios_path, notice: 'port oluşturuldu'}
			else
				format.html{render :new}
			end
		end
	end

	def update
		@portfolio_item = Portfolio.find(params[:id])
		respond_to do |format|
			if @portfolio_item.update(params.require(:portfolio).permit(:title,:subtitle, :body))
				format.html{redirect_to portfolios_path, notice: 'Port düzenlendi'}
			else
				format.html{render :edit}
			end
		end
	end
	 
end
