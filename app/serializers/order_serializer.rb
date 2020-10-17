class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total, :paid

  belongs_to :user
end
