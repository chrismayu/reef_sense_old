class AddTypeToAlarmHistory < ActiveRecord::Migration
  def change
    add_column :alarm_histories, :reef_tank_arduino_id, :string
    add_column :alarm_histories, :reef_tank_id, :integer
  end
end
