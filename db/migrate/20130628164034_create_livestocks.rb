class CreateLivestocks < ActiveRecord::Migration
  def change
    create_table :livestocks do |t|
      t.string :scientific_name
      t.string :image
      t.text :description
      t.string :livestock_type
      t.string :common_name

      t.timestamps
    end
  end
end
