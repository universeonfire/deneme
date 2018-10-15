class Portfolio < ApplicationRecord
	validates_presence_of :title, :body , :main_image, :thumb_image
	# custom query type 1
	def self.angular
		where(subtitle: 'angular')
	end
	#custom query type 2
	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on rails')}

	
end
