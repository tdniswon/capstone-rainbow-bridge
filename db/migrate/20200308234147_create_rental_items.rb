class CreateRentalItems < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_items do |t|
      t.string :rental_item_name, null: false
      t.string :rental_item_description
      t.decimal :rental_item_cost

      t.timestamps
    end
  end
end
