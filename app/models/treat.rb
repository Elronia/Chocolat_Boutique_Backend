class Treat < ApplicationRecord
    has_many :order_treats
    has_many :orders, through: :order_treats
end
