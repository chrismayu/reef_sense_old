class RemoveSigntypeFromNotifications < ActiveRecord::Migration
  def up
    remove_column :notifications, :type
  end

 
end
