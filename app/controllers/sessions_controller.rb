class SessionsController < ApplicationController
 before_action :logged_in?, except: [destroy]

 def new
   @user = User.new
 end

 def create
   user = User.find_by_credentials(user_params[:email], user_params[password])
                     # authenticate(user_params[:password])
   if user
       session[:user_id] = user.id
       flash[:success] = "Welcome back"
       redirect_to tasks_path
   else
       flash[:danger] = "Invalid Authenticated Users"
       redirect_to root_path
   end
 end

   def destroy
     session.delete(:id)
     flash[:success] = "You've been logged out"
     redirect_to root_path
     end

     private

#     def user_params
#       params.require(:user).permit(:username, :password)
#     end
  
# end