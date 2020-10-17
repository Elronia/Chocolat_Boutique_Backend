class UsersController < ApplicationController
    def handle_login
        user = User.find_user(params[:username])
        render json: user
    end

    def create
        byebug
        User.create(username:params[:username])
    end

    def index
        users = User.all
        render json: users
    end
    
    def show
        user = User.find_by(id:params[:id]) 
        render json: user
    end
end
