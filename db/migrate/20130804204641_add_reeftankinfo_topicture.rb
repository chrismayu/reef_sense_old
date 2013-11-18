class AddReeftankinfoTopicture < ActiveRecord::Migration
  def up
     add_column :pictures, :reef_tank_id, :integer
  end

  def down
  end
end
