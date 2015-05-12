class CreateSneakers < ActiveRecord::Migration
  def change
    create_table :sneakers do |t|
      t.integer :cost
      t.string :color
      t.string :name
      t.string :brand

      t.timestamps null: false
    end
  end
end
