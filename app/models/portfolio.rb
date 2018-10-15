class Portfolio < ApplicationRecord
	validates_presence_of :title, :body , :main_image, :thumb_image
	# custom query type 1
	def self.angular
		where(subtitle: 'angular')
	end
	#custom query type 2
	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on rails')}
	

	#sabit değer tanımlama
	#after_initialize controller daosyasındaki new aksiyonu calıstıktan sonra işlemi yapar
	after_initialize :set_defaults
	#||=  eğer değer tanımlıysa işlem yapmaz yoksa işlem yapar if main_image == nil 
	def set_defaults
		self.main_image ||= "https://via.placeholder.com/600x400"
		self.thumb_image ||= "https://via.placeholder.com/350x150"

	end

end
