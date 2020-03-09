class CreateFillings < ActiveRecord::Migration[6.0]
  def change
    create_table :fillings do |t|
      t.string :filling_name, null: false
      t.string :filling_description, null: false

      t.timestamps
    end
  end
end
