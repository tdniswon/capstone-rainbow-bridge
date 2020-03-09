class CreateDietaryRestrictions < ActiveRecord::Migration[6.0]
  def change
    create_table :dietary_restrictions do |t|
      t.string :dietary_restriction_name, null: false

      t.timestamps
    end
  end
end
