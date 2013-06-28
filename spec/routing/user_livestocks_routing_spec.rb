require "spec_helper"

describe UserLivestocksController do
  describe "routing" do

    it "routes to #index" do
      get("/user_livestocks").should route_to("user_livestocks#index")
    end

    it "routes to #new" do
      get("/user_livestocks/new").should route_to("user_livestocks#new")
    end

    it "routes to #show" do
      get("/user_livestocks/1").should route_to("user_livestocks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_livestocks/1/edit").should route_to("user_livestocks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_livestocks").should route_to("user_livestocks#create")
    end

    it "routes to #update" do
      put("/user_livestocks/1").should route_to("user_livestocks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_livestocks/1").should route_to("user_livestocks#destroy", :id => "1")
    end

  end
end
