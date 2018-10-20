class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #name alanını gerekli hale getiriyoruz ki oluşturacağımız sanal değişkenlere atanacak verileri elde edebilelim       
  validates_presence_of :name

  def first_name
  	#self.name.split[0] da kullanılabilir
  	self.name.split.first
  end

  def last_name
  	self.name.split.last
  end
end
