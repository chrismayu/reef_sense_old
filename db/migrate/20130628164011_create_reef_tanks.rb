class CreateReefTanks < ActiveRecord::Migration
  def change
    create_table :reef_tanks do |t|
      t.integer :user_id
      t.date :setup_date
      t.integer :size
      t.string :measurement_type
      t.boolean :send_email_okay, :null => false

      t.timestamps
    end
  end
end
