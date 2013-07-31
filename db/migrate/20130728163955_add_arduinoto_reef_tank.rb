class AddArduinotoReefTank < ActiveRecord::Migration
  def up
    add_column :reef_tanks, :reef_tank_id, :integer
    add_column :reef_tanks, :parameter_setup, :text
    add_column :reef_tanks, :reef_tank_arduino_id, :string
    add_column :reef_tanks, :arduino_board_type, :string
   
  end

  def down
  end
end


