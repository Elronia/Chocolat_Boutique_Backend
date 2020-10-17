class OrderTreat < ApplicationRecord
  belongs_to :treat
  belongs_to :order
end
