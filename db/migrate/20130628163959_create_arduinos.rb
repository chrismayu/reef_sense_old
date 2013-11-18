class CreateArduinos < ActiveRecord::Migration
  def change
    create_table :arduinos do |t|
      t.integer :reef_tank_id
      t.text :parameter_setup
      t.string :reef_tank_arduino_id
      t.string :arduino_board_type

      t.timestamps
    end
  end
end
