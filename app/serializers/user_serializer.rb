class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :address, :city, :state, :zip, :phone, :email

  has_many :orders
  has_many :order_treats, through: :orders
end
