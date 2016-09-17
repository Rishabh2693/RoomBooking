class SessionsController < ApplicationController
  def new
  end

  def create
    library_member = LibraryMember.authenticate(params[:session][:email],params[:session][:password])

    if library_member.nil?
      flash.now[:error] = "Invalid email/Password"
      render :new
    else
      sign_in library_member
      redirect_to library_member
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
