class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :cost
      t.integer :quantity
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
