module ApplicationHelper
	def sample_helper
		#örnek bir helper metodu html_safe komutu bu helper ın kullanıldığı yerde string i html kodu olarak algılanmasını sağlar
		"<p> my Helper </p>".html_safe
	end
	def login_helper
    	if current_user.is_a?(User)
    		link_to "Logout", destroy_user_session_path, method: :delete 
    	else
    		#ruby bu tür komutlarda son itemi gösterir bunun olmaması için parantez içine almamız gerekli ve + simgesiyle birleştirilmeli string concat mantığı işte
    		(link_to "Sing Up", new_user_registration_path) + 
    		"<br>".html_safe + 
    		(link_to "Sign In",  new_user_session_path)
    	end

	end

end
