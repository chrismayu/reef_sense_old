require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ReefTanksController do

  # This should return the minimal set of attributes required to create a valid
  # ReefTank. As you add validations to ReefTank, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReefTanksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all reef_tanks as @reef_tanks" do
      reef_tank = ReefTank.create! valid_attributes
      get :index, {}, valid_session
      assigns(:reef_tanks).should eq([reef_tank])
    end
  end

  describe "GET show" do
    it "assigns the requested reef_tank as @reef_tank" do
      reef_tank = ReefTank.create! valid_attributes
      get :show, {:id => reef_tank.to_param}, valid_session
      assigns(:reef_tank).should eq(reef_tank)
    end
  end

  describe "GET new" do
    it "assigns a new reef_tank as @reef_tank" do
      get :new, {}, valid_session
      assigns(:reef_tank).should be_a_new(ReefTank)
    end
  end

  describe "GET edit" do
    it "assigns the requested reef_tank as @reef_tank" do
      reef_tank = ReefTank.create! valid_attributes
      get :edit, {:id => reef_tank.to_param}, valid_session
      assigns(:reef_tank).should eq(reef_tank)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ReefTank" do
        expect {
          post :create, {:reef_tank => valid_attributes}, valid_session
        }.to change(ReefTank, :count).by(1)
      end

      it "assigns a newly created reef_tank as @reef_tank" do
        post :create, {:reef_tank => valid_attributes}, valid_session
        assigns(:reef_tank).should be_a(ReefTank)
        assigns(:reef_tank).should be_persisted
      end

      it "redirects to the created reef_tank" do
        post :create, {:reef_tank => valid_attributes}, valid_session
        response.should redirect_to(ReefTank.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved reef_tank as @reef_tank" do
        # Trigger the behavior that occurs when invalid params are submitted
        ReefTank.any_instance.stub(:save).and_return(false)
        post :create, {:reef_tank => { "user_id" => "invalid value" }}, valid_session
        assigns(:reef_tank).should be_a_new(ReefTank)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ReefTank.any_instance.stub(:save).and_return(false)
        post :create, {:reef_tank => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested reef_tank" do
        reef_tank = ReefTank.create! valid_attributes
        # Assuming there are no other reef_tanks in the database, this
        # specifies that the ReefTank created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ReefTank.any_instance.should_receive(:update_attributes).with({ "user_id" => "1" })
        put :update, {:id => reef_tank.to_param, :reef_tank => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested reef_tank as @reef_tank" do
        reef_tank = ReefTank.create! valid_attributes
        put :update, {:id => reef_tank.to_param, :reef_tank => valid_attributes}, valid_session
        assigns(:reef_tank).should eq(reef_tank)
      end

      it "redirects to the reef_tank" do
        reef_tank = ReefTank.create! valid_attributes
        put :update, {:id => reef_tank.to_param, :reef_tank => valid_attributes}, valid_session
        response.should redirect_to(reef_tank)
      end
    end

    describe "with invalid params" do
      it "assigns the reef_tank as @reef_tank" do
        reef_tank = ReefTank.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ReefTank.any_instance.stub(:save).and_return(false)
        put :update, {:id => reef_tank.to_param, :reef_tank => { "user_id" => "invalid value" }}, valid_session
        assigns(:reef_tank).should eq(reef_tank)
      end

      it "re-renders the 'edit' template" do
        reef_tank = ReefTank.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ReefTank.any_instance.stub(:save).and_return(false)
        put :update, {:id => reef_tank.to_param, :reef_tank => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested reef_tank" do
      reef_tank = ReefTank.create! valid_attributes
      expect {
        delete :destroy, {:id => reef_tank.to_param}, valid_session
      }.to change(ReefTank, :count).by(-1)
    end

    it "redirects to the reef_tanks list" do
      reef_tank = ReefTank.create! valid_attributes
      delete :destroy, {:id => reef_tank.to_param}, valid_session
      response.should redirect_to(reef_tanks_url)
    end
  end

end
