class UsersController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = User.find(params[:id])
        @posts = @user.posts
    end

    def index 
        @users = User.all 
    end

    private
    def post_params
        params.require(:user).permit(:id, :name, :email, :avatar)
    end 
end
