require "spec_helper"

describe ArduinosController do
  describe "routing" do

    it "routes to #index" do
      get("/arduinos").should route_to("arduinos#index")
    end

    it "routes to #new" do
      get("/arduinos/new").should route_to("arduinos#new")
    end

    it "routes to #show" do
      get("/arduinos/1").should route_to("arduinos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/arduinos/1/edit").should route_to("arduinos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/arduinos").should route_to("arduinos#create")
    end

    it "routes to #update" do
      put("/arduinos/1").should route_to("arduinos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/arduinos/1").should route_to("arduinos#destroy", :id => "1")
    end

  end
end
