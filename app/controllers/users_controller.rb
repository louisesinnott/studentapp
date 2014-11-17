
class UsersController < ApplicationController
      def show
        @user = User.find(params[:id])
        #@microposts = @user.microposts    # NEW LINE
      end

      def new
        @user = User.new
      end

      

      def create

        secure_params = params.require(:user).permit(:student_no, :name, :email, :password, :password_confirmation)
        @user = User.new(secure_params)
        
        if @user.save
        	sign_in @user       #  NEW LINE
        	flash[:success] = "Welcome to the Sample App!"    # NEW LINE
        	redirect_to @user   # NEW LINE
        else
            render 'new'     # NEW LINE    
        end
      end
    end


