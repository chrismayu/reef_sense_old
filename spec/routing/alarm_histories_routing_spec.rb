require "spec_helper"

describe AlarmHistoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/alarm_histories").should route_to("alarm_histories#index")
    end

    it "routes to #new" do
      get("/alarm_histories/new").should route_to("alarm_histories#new")
    end

    it "routes to #show" do
      get("/alarm_histories/1").should route_to("alarm_histories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/alarm_histories/1/edit").should route_to("alarm_histories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/alarm_histories").should route_to("alarm_histories#create")
    end

    it "routes to #update" do
      put("/alarm_histories/1").should route_to("alarm_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/alarm_histories/1").should route_to("alarm_histories#destroy", :id => "1")
    end

  end
end
