class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
#     raise params[:session].inspect
    flash.now[:error] = "Invalid email/password combination"
    @title = "Sign In"
    render 'new'
    else
#       raise params[:session].inspect
      #handle successful signin
      sign_in user
      redirect_back_or(user)
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
  
end
