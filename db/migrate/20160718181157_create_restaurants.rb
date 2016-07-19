class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :title
      t.text :address
      t.text :description
      t.text :properties

      t.timestamps null: false
    end
  end
end
