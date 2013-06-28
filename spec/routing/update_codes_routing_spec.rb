require "spec_helper"

describe UpdateCodesController do
  describe "routing" do

    it "routes to #index" do
      get("/update_codes").should route_to("update_codes#index")
    end

    it "routes to #new" do
      get("/update_codes/new").should route_to("update_codes#new")
    end

    it "routes to #show" do
      get("/update_codes/1").should route_to("update_codes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/update_codes/1/edit").should route_to("update_codes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/update_codes").should route_to("update_codes#create")
    end

    it "routes to #update" do
      put("/update_codes/1").should route_to("update_codes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/update_codes/1").should route_to("update_codes#destroy", :id => "1")
    end

  end
end
