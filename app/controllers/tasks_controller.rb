class TasksController < ApplicationController
  
      def index
        @user = User.includes(:tasks).find_by(id: params[:user_id])
      end
      
      def new
        @user = User.find_by(id: params[:user_id])
      end
  
      def create
        @user = User.find_by(id: params[:user_id])
       
        if @user.save
          redirect_to user_task_path(@user)
        else
          redirect_to new_user_task_path(@user)
        end
      end
  
      def edit
         @task = User.find_by(id: params[:id])
         @user = @task.user
      end
  
     
     
      def destroy
        @post = Post.find_by(id: params[:id])
        @topic = @post.topic
  
        if @task.destroy
            flash.now[:success] = "Your task was deleted."
          redirect_to user_task_path(@user)
        end
      end
end
