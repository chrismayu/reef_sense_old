require "spec_helper"

describe TodoTasksController do
  describe "routing" do

    it "routes to #index" do
      get("/todo_tasks").should route_to("todo_tasks#index")
    end

    it "routes to #new" do
      get("/todo_tasks/new").should route_to("todo_tasks#new")
    end

    it "routes to #show" do
      get("/todo_tasks/1").should route_to("todo_tasks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/todo_tasks/1/edit").should route_to("todo_tasks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/todo_tasks").should route_to("todo_tasks#create")
    end

    it "routes to #update" do
      put("/todo_tasks/1").should route_to("todo_tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/todo_tasks/1").should route_to("todo_tasks#destroy", :id => "1")
    end

  end
end
