class CreateRentalLines < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_lines do |t|
      t.references :order, null: false, foreign_key: true
      t.references :rental_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
