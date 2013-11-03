class AddSigntypeToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :sign_type, :string
  end
end
