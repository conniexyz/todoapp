class UsersController<ApplicationController
 
 def new
  @user = User.new
 end

 def edit
  @user = User.find_by(id: params[:id])
 end
 
 def create
      #TODO: implement user creation
      @user = User.new(user_params)
      # binding.pry

    if @user.save
       flash[:success] = "You've Successful Register."
      redirect_to todo_lists_path
    else
       flash[:danger] = @user.errors.full_messages
      redirect_to new_user_path
      #  render new_user_path
    end
 end

def update
 # binding.pry
 @update = User.find_by(id: params[:id])

     if @user.update(user_params)
       flash[:success] = "User was successfully updated."
       redirect_to users_path
     else
       flash.now[:error] = @user.errors.full_messages "There was a problem authentication."
       redirect_to edit_user_path(@user)
     end
end
 

end