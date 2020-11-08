class ApplicationController < ActionController::API
    # before_action :authorized
 
    #This function takes in what has to be encoded and returns a JWT string token
    def encode_token(payload)
        # should store secret in env variable
        JWT.encode(payload, 'my_s3cr3t')
    end
    
    def auth_header
        # { Authorization: 'Bearer <token>' }
        request.headers['Authorization']
    end
    
    def decoded_token
        if auth_header
        token = auth_header.split(' ')[1]
        # header: { 'Authorization': 'Bearer <token>' }
        begin
            JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
        rescue JWT::DecodeError
            nil
        end
        end
    end
    
    def logged_in_user
        if decoded_token
        user_id = decoded_token[0]['user_id']
        @user = User.find_by(id: user_id)
        end
    end
    
    def logged_in?
        !!logged_in_user
    end
    
    def authorized
        render json: { error: 'Please log in' }, status: :unauthorized unless logged_in?
    end

    def checkout
        new_order = Order.create(
            total: params["order"]["total"],
            user_id: params["userId"],
            paid: true
        )
        # byebug
        params["order"]["treats"].each do |treat|
            OrderTreat.create(
                quantity: treat["qty"],
                order_id: new_order["id"],
                treat_id: treat["id"]
            )
        end
        # byebug
        render json: params
    end

    
end
