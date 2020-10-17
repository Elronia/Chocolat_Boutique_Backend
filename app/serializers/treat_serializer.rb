class TreatSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image

  has_many :order_treats
  has_many :orders, through: :order_treats
end
