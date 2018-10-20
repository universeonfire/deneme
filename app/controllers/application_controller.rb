class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	#concern klasorunun içindeki DeviseWhitelist metodunu alır
	include DeviseWhitelist
	
	
end
