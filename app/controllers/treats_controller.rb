class TreatsController < ApplicationController
    def index 
        treats = Treat.all
        render json: treats
    end

    def show
        treat = Treat.find(params[:id]) 
        render json: treat
    end
end
