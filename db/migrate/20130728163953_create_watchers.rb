class CreateWatchers < ActiveRecord::Migration
  def up
  

        change_column :watchers, :powerhead, :boolean
        change_column :watchers, :heater, :boolean
        change_column :watchers, :main_pump, :boolean
        change_column :watchers, :skimmer, :boolean
        change_column :watchers, :refuge_light, :boolean
        change_column :watchers, :chiller, :boolean
        change_column :watchers, :ato_pump, :boolean
        change_column :watchers, :main_light, :boolean
    
 
  end
  
  def down
  end
  
end
