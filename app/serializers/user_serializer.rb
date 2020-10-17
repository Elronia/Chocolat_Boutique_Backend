class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :orders
  has_many :order_treats, through: :orders
end
