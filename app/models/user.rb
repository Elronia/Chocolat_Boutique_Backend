class User < ApplicationRecord
    has_many :orders
    has_many :order_treats, through: :orders
    has_secure_password
end
