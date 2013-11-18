class CreateMaintainenceLogs < ActiveRecord::Migration
  def change
    create_table :maintainence_logs do |t|
      t.integer :reef_tank_id
      t.text :description
      t.string :amount

      t.timestamps
    end
  end
end
