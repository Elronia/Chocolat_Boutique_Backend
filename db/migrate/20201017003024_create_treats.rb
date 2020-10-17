class CreateTreats < ActiveRecord::Migration[6.0]
  def change
    create_table :treats do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
