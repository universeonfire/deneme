module SetSource
	extend ActiveSupport::Concern
	included do |variable|
		before_action :configure_permitted_parameters, if: :devise_controller?
	end
	def set_source
		session[:source] = params[:q] if params[:q]
	end
end