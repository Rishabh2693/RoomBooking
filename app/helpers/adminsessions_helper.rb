module AdminsessionsHelper
  def sign_in(admin)
    session[:user_id]= admin.id
    self.set_current_user(admin)
  end
  def set_current_user(admin)
    @current_user = admin
  end
  def current_user
    @current_user ||= Admin.find(session[:user_id]) if session[:user_id]
  end
  def signed_in?
    !current_user.nil?
  end
  def sign_out
    session[:user_id] = nil
    self.set_current_user(nil)
  end
  def current_user?(admin)
    admin == current_user
  end
  def deny_access
    redirect_to root, :notice => "Please sign in to access this page"
  end
end
