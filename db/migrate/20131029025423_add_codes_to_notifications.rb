class AddCodesToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :check_item, :string
    add_column :notifications, :check_parameter, :integer
  end
end
