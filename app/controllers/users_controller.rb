class UsersController < ApplicationController

    def login
        @user = User.find_by(username: params[:username])
        # If the user could be found by username and the password is correct, we create a token from the user's id. We then send back the user and the token
        if @user && @user.authenticate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {
                # Use UserSerializer.new() to ensure that user object returned is formatted with all the attributes we specified in user_serializer
                user: UserSerializer.new(@user), 
                token: token
            }
        else
            render json: {error: "Invalid Username Or Password"}, status: 422
        end
    end

    # Creating a new user based on params passed in, if valid, create a token for the user to log them in, render out the user and the token
    def create
        # byebug
        @user = User.create(user_params)
        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: {
                user: UserSerializer.new(@user), 
                token: token
            }
        else
            render json: {error: "Invalid user"}, status: 422
        end
    end

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
    def update 
        user = User.find(params[:id])
        # byebug
        user.update(user_params)

        render json: user
    end

    private
    def user_params
        params.permit(:username, :password, :first_name, :last_name, :address, :city, :state, :zip, :phone, :email)
    end
end

