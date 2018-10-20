#modul isminin dosya ismiyle eşleşmesi gerekli rails modul isminin içinde büyük harf görürse o harfi küçültüp başına alt tire koyar "_w" gibi
module DeviseWhitelist
	extend ActiveSupport::Concern

	included do |variable|
		before_action :configure_permitted_parameters, if: :devise_controller?
	end
	#devise controller ına ulaşabilmek için
	#configure_permitted_parameters isim onemli değil başka bişey de yazılabilir
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
	end
end