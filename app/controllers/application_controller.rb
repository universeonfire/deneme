class ApplicationController < ActionController::Base
	protect_from_forgery unless:  -> { request.format.ajax? }
	#concern klasorunun içindeki DeviseWhitelist metodunu alır
	include DeviseWhitelist
	include SetSource
	include CurrentUserConcern
	include DefaultPageContent
	before_action :set_copyright
	def set_copyright
		@copyright = EvoViewTool::Renderer.copyright 'Evren Nari' , 'All Rights Reserved'

	end
end
