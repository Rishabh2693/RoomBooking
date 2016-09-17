class AdminsessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.authenticate(params[:session][:email],params[:session][:password])

    if admin.nil?
      flash.now[:error] = "Invalid email/Password"
      render :new
    else
      sign_in admin
      redirect_to admin
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
