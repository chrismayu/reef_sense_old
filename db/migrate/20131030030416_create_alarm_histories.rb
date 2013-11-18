class CreateAlarmHistories < ActiveRecord::Migration
  def change
    create_table :alarm_histories do |t|
      t.string :arduino_id
      t.string :parameter
      t.string :sign
      t.integer :alarm_value
      t.integer :actual_value
      t.text :message_sent
      t.string :sent_to_email
      t.boolean :email_sent

      t.timestamps
    end
  end
end
