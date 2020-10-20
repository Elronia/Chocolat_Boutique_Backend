class Treat < ApplicationRecord
    has_many :order_treats, dependent: :destroy
    has_many :orders, through: :order_treats
end
