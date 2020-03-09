class CreateTierFillings < ActiveRecord::Migration[6.0]
  def change
    create_table :tier_fillings do |t|
      t.references :tier, null: false, foreign_key: true
      t.references :filling, null: false, foreign_key: true

      t.timestamps
    end
  end
end
