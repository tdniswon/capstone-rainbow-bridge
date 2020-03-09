class CreateFrostingFlavors < ActiveRecord::Migration[6.0]
  def change
    create_table :frosting_flavors do |t|
      t.string :frosting_name, null: false

      t.timestamps
    end
  end
end
