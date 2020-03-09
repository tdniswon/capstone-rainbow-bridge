class CreateShapes < ActiveRecord::Migration[6.0]
  def change
    create_table :shapes do |t|
      t.string :shape_name, null: false

      t.timestamps
    end
  end
end
