class Blog < ApplicationRecord
	enum status: {draft: 0, published: 1}
	extend FriendlyId
	friendly_id :title, use: :slugged
	#validates_presence_of komutu ardından gelen parametreleri kontrol eder böylece nil olması durumunda hata verecek alanlara değer atamsı olmadan işlem yaptırmaz
	validates_presence_of :title, :body
	#belongs_to komutu bu tablonun ilişkili olduğu ana tabloyu belirtir
	belongs_to :topic , optional: true
	has_many :comments ,dependent: :destroy
end
