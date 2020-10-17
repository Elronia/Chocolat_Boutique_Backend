class OrderTreatSerializer < ActiveModel::Serializer
  attributes :id, :quantity

  belongs_to :treat
  belongs_to :order
end
