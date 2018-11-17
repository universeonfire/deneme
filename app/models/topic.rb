class Topic < ApplicationRecord
	validates_presence_of :title
	#has_many bu tablonun ilişkili olduğu alt tablo ile arasındaki bağlantıyı sağlar
	has_many :blogs
	def self.with_blogs
		includes(:blogs).where.not(blogs: {id: nil})
	end
end
