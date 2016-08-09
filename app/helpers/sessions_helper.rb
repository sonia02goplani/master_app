module SessionsHelper
	def log_in(user)
		session[:user_id]=user.id
end

#Remembers a user in a persistent session.
def remember(user)
	user.remember
	cookies.permanent.signed[:user_id]=user.id
	cookies.permanent[:remember_token]=user.remember_token

end
def forget(user)
	user.forget
	cookies.permanent.signed[:user_id]=nil
	cookies[:remember_token]=nil
end	
def current_user
	if(user_id=session[:user_id])
			@current_user ||=User.find_by(id: user_id)
	else if(user_id=cookies.signed[:user_id])
	user=User.find_by(id: user_id)
	if user && user.authenticated?(cookies[:remember_token])
	log_in user_id
	@current_user=user
	end
	end
end
end
 def logged_in?
 	!current_user.nil?
 end
 def log_out
 	forget(current_user)
    session[:user_id]=nil
    @current_user = nil
  end 
end
