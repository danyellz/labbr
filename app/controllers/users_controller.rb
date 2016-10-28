class UsersController < ApplicationController
    def new
     @user = User.new
    end
    
    def create
     puts "Hit create route!"
     @user = User.new(user_params)
     if @user.save
       puts "Saved things!"
       redirect_to proposals_path
     else
       @errors = @user.errors.full_messages
     end
   end

   def login
     puts "Hit login route!"
     redirect_to proposals_path
    end

    def destroy
     redirect_to root
    end

 private

    def user_params
     params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
