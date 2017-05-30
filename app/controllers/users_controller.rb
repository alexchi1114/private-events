class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			log_in @user
			redirect_to user_path(@user)
		end
	end

	def show
		@attended_events = current_user.attended_events
	end

	private 
  	def user_params
  		params.require(:user).permit(:name)
 	 end
end
