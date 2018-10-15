class Portfolio < ApplicationRecord
	validates_presence_of :title, :body , :main_iamge, :thumb_image
end
