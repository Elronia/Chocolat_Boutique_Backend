require 'stripe'
require 'dotenv'
Dotenv.load

class PaymentsController < ApplicationController

    def create
        Stripe.api_key = ENV["STRIPE_API_KEY"]
        payment = Stripe::Charge.create({
            amount: params[:total],
            currency: "usd",
            source: params[:charge][:token],
            description: "test_payment"
        })
        render json: payment
    end
end
