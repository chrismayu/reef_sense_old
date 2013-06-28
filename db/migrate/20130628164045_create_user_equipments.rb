class CreateUserEquipments < ActiveRecord::Migration
  def change
    create_table :user_equipments do |t|
      t.integer :reef_tank_id
      t.string :reef_tank_arduino_id
      t.text :description
      t.string :equipment_name
      t.string :image
      t.string :equipment_type

      t.timestamps
    end
  end
end
