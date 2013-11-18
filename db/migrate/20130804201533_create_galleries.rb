class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :reef_tank_id
      t.string :name

      t.timestamps
    end
  end
end
