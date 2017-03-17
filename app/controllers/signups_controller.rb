class SignupsController < ApplicationController


	def new
		@signup = Signup.new
		if params[:message]
			@message = 
			params[:message]
		else
			@message="test"
		end
  	end

    def create
    	@signup = Signup.new(user_params)
    	if user_params[:password_confirmation]=user_params[:password]
		    if @signup.save
		      session[:user_id] = @signup.id
		      redirect_to '/'
		    else
		      render new_signup_path
		    end
		else 
			@message= "Password do not match"
			 render new_signup_path(:message)
		end
    end

private

    def user_params
    params.require(:signup).permit(:fname,:lname,:gender,:dob, :email, :password, :password_confirmation)
  end


end