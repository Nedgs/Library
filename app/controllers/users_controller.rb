class UsersController < ApplicationController
    skip_before_action :require_login, only: [:new, :create]
    before_action :set_user, only: [:borrowed_books]
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to login_path, notice: 'Account created successfully'
      else
        render :new
      end
    end
  
    def borrowed_books
      @borrowed_books = @user.current_borrowed_books
    end
  
    private
  
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
  