class AddWaterleveltoWatcher < ActiveRecord::Migration
  def up
    add_column :watchers, :waterlevelokay, :boolean 
    add_column :watchers, :startingup, :boolean
  end

  def down
  end
end
