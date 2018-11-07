class PortfoliosController < ApplicationController
	before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
	access all: [:show, :index , :angular], user: {except: [:destroy,:new,:create,:update,:edit]}, site_admin: :all
	layout "portfolio"

	def index

		#tüm itemleri getir
		@portfolio_items = Portfolio.by_pos
		# portfolio.rb dosyasında tanımlanmış sorgu tiplerinden çağırmak
		#@portfolio_items = Portfolio.angular
		# diğer yol
		#@portfolio_items = Portfolio.ruby_on_rails_portfolio_items

	end
	def sort
		
		params[:order].each do |k,v|
			puts k,v
			Portfolio.find(v[:id]).update(position: v[:position])
		end
		render nothing: true
	end
	# farklı bir sayfaya yönledirme yapmak
	def angular
		@angular_portfolio_items = Portfolio.angular
	end

	def new
		#atama yapar
		@portfolio_item = Portfolio.new
		3.times { @portfolio_item.technologies.build }
	end

	def edit
		# portfolios dizinine oluşturulan _form.html.erb partial dosyası edit yaparken kullanılan teknolojiler listesini getirmediği için burdaya bunu ekliyoruz
		3.times { @portfolio_item.technologies.build }

	end

	def show
		
		@page_title = @portfolio_item.title
	end

	def create
		@portfolio_item = Portfolio.new(portfolio_params)
		respond_to do |format|
			if @portfolio_item.save
				format.html{redirect_to portfolios_path, notice: 'port oluşturuldu'}
			else
				format.html{render :new}
			end
		end
	end

	def update
		 
		respond_to do |format|
			if @portfolio_item.update(portfolio_params)
				format.html{redirect_to portfolios_path, notice: 'Port düzenlendi'}
			else
				format.html{render :edit}
			end
		end
	end

	def destroy
	    
	    @portfolio_item.destroy
	    respond_to do |format|
	      format.html { redirect_to portfolios_url, notice: 'Port silindi.' }
	    end
  	end

	private
		def set_portfolio
			@portfolio_item = Portfolio.find(params[:id])
		end
		def portfolio_params
			params.require(:portfolio).permit(:title,:subtitle, :body, technologies_attributes: [:name])
		end		 
end
