require 'spec_helper'

describe "UserEquipments" do
  describe "GET /user_equipments" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get user_equipments_path
      response.status.should be(200)
    end
  end
end
