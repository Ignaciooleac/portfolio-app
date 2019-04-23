class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def index 
        @users = User.all 
    end

    private
    def post_params
        params.require(:user).permit(:id, :first_name, :last_name, :email)
    end 
end
