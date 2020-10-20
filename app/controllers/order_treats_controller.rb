class OrderTreatsController < ApplicationController
    def index 
        order_treats = OrderTreat.all
        render json: order_treats
    end

    def show
        order_treat = OrderTreat.find(params[:id]) 
        render json: order_treat
    end

    def create
        new_order_treat = OrderTreat.create(order_treat_params)
        render json: new_order_treat
    end

    def update 
        order_treat = OrderTreat.find(params[:id])
        byebug
        order_treat.update(order_treat_params)

        render json: order_treat
    end

    def delete
        order_treat = OrderTreat.find(params[:id])
        order_treat.destroy

        render json: order_treat
    end

    private
    def order_treat_params
        params.permit(:quantity, :order_id, :treat_id)
    end
end
