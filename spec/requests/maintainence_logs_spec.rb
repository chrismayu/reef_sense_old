require 'spec_helper'

describe "MaintainenceLogs" do
  describe "GET /maintainence_logs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get maintainence_logs_path
      response.status.should be(200)
    end
  end
end
