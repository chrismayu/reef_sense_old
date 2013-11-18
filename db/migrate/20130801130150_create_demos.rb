class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.integer :feature_user
      t.boolean :starting_page

      t.timestamps
    end
  end
end
