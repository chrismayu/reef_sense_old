class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.integer :reef_tank_id
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
