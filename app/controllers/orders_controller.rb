class OrdersController < ApplicationController
    def index 
        orders = Order.all
        render json: orders
    end

    def show
        order = Order.find(params[:id]) 
        render json: order
    end

    def create
        new_order = Order.create(order_params)
        render json: new_order
    end

    def update 
        order = Order.find(params[:id])
        byebug
        order.update(order_params)

        render json: order
    end

    def delete
        order = Order.find(params[:id])
        order.destroy

        render json: order
    end

    private
    def order_params
        params.permit(:total, :paid, :user_id)
    end

end
