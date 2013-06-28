class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :reef_tank_id
      t.string :reef_tank_arduino_id
      t.boolean :sent_email, :null => false
      t.text :message2
      t.text :message
      t.string :priority
      t.boolean :display_site_wide, :null => false

      t.timestamps
    end
  end
end
