class Demo < ActiveRecord::Base
  attr_accessible :feature_user, :starting_page
  belongs_to :reef_tank
end
