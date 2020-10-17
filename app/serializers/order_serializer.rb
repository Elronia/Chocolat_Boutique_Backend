class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total, :paid

  belongs_to :user
  has_many :order_treats
  has_many :treats, through: :order_treats
end
