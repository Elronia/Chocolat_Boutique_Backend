class UsersController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {message: "Incorrect login info! Please try again"}
        end
    end

    # def login
    #     @user = User.find_by(username: params[:username])
    
    #     # If the user could be found by username and the password is correct, we create a token ffrom the user's id. We then send back the user and the token
    #     if @user && @user.authenticate(params[:password])
    #       token = encode_token({user_id: @user.id})
    
    #       # Use UserSerializer.new() to ensure that user object returned is formatted with all the attributes we specified in user_serializer
    #       render json: { user: UserSerializer.new(@user), token: token }
    #     else
    #       render json: {error: 'Invalid Username Or Password'}
    #     end
    # end

    # def create
    #     byebug
    #     User.create(username:params[:username])
    # end

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end
    
    # def show
    #     user = User.find_by(id:params[:id]) 
    #     render json: user
    # end
end
