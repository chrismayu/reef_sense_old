require "spec_helper"

describe UserEquipmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_equipments").should route_to("user_equipments#index")
    end

    it "routes to #new" do
      get("/user_equipments/new").should route_to("user_equipments#new")
    end

    it "routes to #show" do
      get("/user_equipments/1").should route_to("user_equipments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_equipments/1/edit").should route_to("user_equipments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_equipments").should route_to("user_equipments#create")
    end

    it "routes to #update" do
      put("/user_equipments/1").should route_to("user_equipments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_equipments/1").should route_to("user_equipments#destroy", :id => "1")
    end

  end
end
