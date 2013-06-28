class CreateTodoTasks < ActiveRecord::Migration
  def change
    create_table :todo_tasks do |t|
      t.integer :reef_tank_id
      t.integer :list_id
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
