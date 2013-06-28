class CreateWatchers < ActiveRecord::Migration
  def change
    create_table :watchers do |t|
      t.integer :reef_tank_id
      t.text :params
      t.integer :updated_reason
      t.string :reef_tank_arduino_id
      t.boolean :main_light, :null => false
      t.boolean :ato_pump, :null => false
      t.boolean :chiller, :null => false
      t.boolean :refuge_light, :null => false
      t.boolean :skimmer, :null => false
      t.boolean :main_pump, :null => false
      t.boolean :heater, :null => false
      t.boolean :powerhead, :null => false
      t.decimal :temp, :precision => 8, :scale => 2
      t.decimal :ambeint_temp, :precision => 8, :scale => 2
      t.integer :ph_level, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
