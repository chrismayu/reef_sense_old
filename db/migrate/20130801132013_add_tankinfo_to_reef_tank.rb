class AddTankinfoToReefTank < ActiveRecord::Migration
  def change
    add_column :reef_tanks, :tank_name, :string
  end
end
