class SignupsController < ApplicationController


	def new
  	end

    def create
    	user = Signup.new(user_params)
	    if user.save
	      session[:user_id] = user.id
	      redirect_to '/'
	    else
	      redirect_to '/'
	    end
    end

private

    def user_params
    params.require(:login).permit(:fname,:lname,:gender, :email, :password, :password_confirmation)
  end


end