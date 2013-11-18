class CreateUserLivestocks < ActiveRecord::Migration
  def change
    create_table :user_livestocks do |t|
      t.integer :reef_tank_id
      t.string :scientific_name
      t.text :description
      t.string :image
      t.string :livestock_type
      t.string :common_name

      t.timestamps
    end
  end
end
