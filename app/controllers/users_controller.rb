class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		#create a workspace
		# just create a new workspace model based on company name
		# if w = workspace.save
			@user = User.new(params[:user])
			w = Workspace.new
			w.name = @user.company_name
			if w.save
				@user.workspace_id = w.id
				@user.save
				# w.create_user(@user)
				redirect_to root_url, notice: "Thank you for signing up!"
			else
				render 'new'
			end

			#@user.workspace_id = w.id
			# if @user.save
			# 	session[:user_id] = @user.id
			# 	redirect_to root_url, notice: "Thank you for signing up!"
			# else
			# 	render "new"
			# end
		# workspace if end
	end
end
