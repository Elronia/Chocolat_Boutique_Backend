class CreateOrderTreats < ActiveRecord::Migration[6.0]
  def change
    create_table :order_treats do |t|
      t.integer :quantity
      t.references :treat, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
