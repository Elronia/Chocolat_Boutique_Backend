class User < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :order_treats, through: :orders
    has_secure_password

    validates :email, uniqueness: { case_sensitive: false }
    validates :username, uniqueness: { case_sensitive: false }
end
