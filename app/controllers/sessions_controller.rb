class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
    # print user
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to root_url, notice: "Logged in!"
  	else
      print "not able to authenticate"
  		flash.now.alert = "Email or password is invalid"
  		render "new"
  	end
  end
end
