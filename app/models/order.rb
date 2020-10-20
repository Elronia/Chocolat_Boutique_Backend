class Order < ApplicationRecord
  belongs_to :user
  has_many :order_treats, dependent: :destroy
  has_many :treats, through: :order_treats
end
