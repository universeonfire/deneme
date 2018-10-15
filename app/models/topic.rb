class Topic < ApplicationRecord
	validates_presence_of :title
	#has_many bu tablonun ilişkili olduğu alt tablo ile arasındaki bağlantıyı sağlar
	has_many :blogs
end
