class TodoTask < ActiveRecord::Base
  attr_accessible :completed, :description, :list_id, :reef_tank_id
end
