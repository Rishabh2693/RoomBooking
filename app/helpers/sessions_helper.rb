module SessionsHelper
  def sign_in(library_member)
    session[:user_id]= library_member.id
    self.set_current_user(library_member)
  end
  def set_current_user(library_member)
    @current_user = library_member
  end
  def current_user
    @current_user ||= LibraryMember.find(session[:user_id]) if session[:user_id]
  end
  def signed_in?
    !current_user.nil?
  end
  def sign_out
    session[:user_id] = nil
    self.set_current_user(nil)
  end
  def current_user?(library_member)
    library_member == current_user
  end
  def deny_access
    redirect_to root, :notice => "Please sign in to access this page"
  end
end

