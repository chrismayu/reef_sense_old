require "spec_helper"

describe MaintainenceLogsController do
  describe "routing" do

    it "routes to #index" do
      get("/maintainence_logs").should route_to("maintainence_logs#index")
    end

    it "routes to #new" do
      get("/maintainence_logs/new").should route_to("maintainence_logs#new")
    end

    it "routes to #show" do
      get("/maintainence_logs/1").should route_to("maintainence_logs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/maintainence_logs/1/edit").should route_to("maintainence_logs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/maintainence_logs").should route_to("maintainence_logs#create")
    end

    it "routes to #update" do
      put("/maintainence_logs/1").should route_to("maintainence_logs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/maintainence_logs/1").should route_to("maintainence_logs#destroy", :id => "1")
    end

  end
end
