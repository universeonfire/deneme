module CurrentUserConcern
	extend ActiveSupport::Concern
	included do |variable|
		before_action :current_user, if: :devise_controller?
	end
	#eğer current_user doluysa devam et.değilse Guest kullanıcısı oluştur method override
	def current_user
		super || guest_user
	end
	def guest_user
		OpenStruct.new(first_name: "Guest")
	end
end