class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :gallery_id
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
