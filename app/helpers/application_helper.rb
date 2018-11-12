module ApplicationHelper
	def sample_helper
		#örnek bir helper metodu html_safe komutu bu helper ın kullanıldığı yerde string i html kodu olarak algılanmasını sağlar
		"<p> my Helper </p>".html_safe
	end
	def login_helper(style)
    	if current_user.is_a?(GuestUser)
            #ruby bu tür komutlarda son itemi gösterir bunun olmaması için parantez içine almamız gerekli ve + simgesiyle birleştirilmeli string concat mantığı işte
            (link_to "Sing Up", new_user_registration_path, class: style) + 
            " ".html_safe + 
            (link_to "Sign In",  new_user_session_path, class: style)
    		
    	else
    		link_to "Logout", destroy_user_session_path, method: :delete , class: style
    	end

	end
    def source_helper(layout_name)
        if session[:source]
            greeting = "thanks for visiting me from #{session[:source]} and you are on the #{layout_name}"
            content_tag(:p,greeting,class: "source-greeting")
        end
    end

    def alerts
        alert = (flash[:alert] || flash[:error] || flash[:notice])
        
        if alert
            alert_gen alert
        end
    end

    def alert_gen msg
        js add_gritter(msg, :title => "Evren Nari", sticky: false)
    end

end
