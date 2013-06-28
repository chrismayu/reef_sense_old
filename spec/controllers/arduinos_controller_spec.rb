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

describe ArduinosController do

  # This should return the minimal set of attributes required to create a valid
  # Arduino. As you add validations to Arduino, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "reef_tank_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ArduinosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all arduinos as @arduinos" do
      arduino = Arduino.create! valid_attributes
      get :index, {}, valid_session
      assigns(:arduinos).should eq([arduino])
    end
  end

  describe "GET show" do
    it "assigns the requested arduino as @arduino" do
      arduino = Arduino.create! valid_attributes
      get :show, {:id => arduino.to_param}, valid_session
      assigns(:arduino).should eq(arduino)
    end
  end

  describe "GET new" do
    it "assigns a new arduino as @arduino" do
      get :new, {}, valid_session
      assigns(:arduino).should be_a_new(Arduino)
    end
  end

  describe "GET edit" do
    it "assigns the requested arduino as @arduino" do
      arduino = Arduino.create! valid_attributes
      get :edit, {:id => arduino.to_param}, valid_session
      assigns(:arduino).should eq(arduino)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Arduino" do
        expect {
          post :create, {:arduino => valid_attributes}, valid_session
        }.to change(Arduino, :count).by(1)
      end

      it "assigns a newly created arduino as @arduino" do
        post :create, {:arduino => valid_attributes}, valid_session
        assigns(:arduino).should be_a(Arduino)
        assigns(:arduino).should be_persisted
      end

      it "redirects to the created arduino" do
        post :create, {:arduino => valid_attributes}, valid_session
        response.should redirect_to(Arduino.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved arduino as @arduino" do
        # Trigger the behavior that occurs when invalid params are submitted
        Arduino.any_instance.stub(:save).and_return(false)
        post :create, {:arduino => { "reef_tank_id" => "invalid value" }}, valid_session
        assigns(:arduino).should be_a_new(Arduino)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Arduino.any_instance.stub(:save).and_return(false)
        post :create, {:arduino => { "reef_tank_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested arduino" do
        arduino = Arduino.create! valid_attributes
        # Assuming there are no other arduinos in the database, this
        # specifies that the Arduino created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Arduino.any_instance.should_receive(:update_attributes).with({ "reef_tank_id" => "1" })
        put :update, {:id => arduino.to_param, :arduino => { "reef_tank_id" => "1" }}, valid_session
      end

      it "assigns the requested arduino as @arduino" do
        arduino = Arduino.create! valid_attributes
        put :update, {:id => arduino.to_param, :arduino => valid_attributes}, valid_session
        assigns(:arduino).should eq(arduino)
      end

      it "redirects to the arduino" do
        arduino = Arduino.create! valid_attributes
        put :update, {:id => arduino.to_param, :arduino => valid_attributes}, valid_session
        response.should redirect_to(arduino)
      end
    end

    describe "with invalid params" do
      it "assigns the arduino as @arduino" do
        arduino = Arduino.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Arduino.any_instance.stub(:save).and_return(false)
        put :update, {:id => arduino.to_param, :arduino => { "reef_tank_id" => "invalid value" }}, valid_session
        assigns(:arduino).should eq(arduino)
      end

      it "re-renders the 'edit' template" do
        arduino = Arduino.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Arduino.any_instance.stub(:save).and_return(false)
        put :update, {:id => arduino.to_param, :arduino => { "reef_tank_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested arduino" do
      arduino = Arduino.create! valid_attributes
      expect {
        delete :destroy, {:id => arduino.to_param}, valid_session
      }.to change(Arduino, :count).by(-1)
    end

    it "redirects to the arduinos list" do
      arduino = Arduino.create! valid_attributes
      delete :destroy, {:id => arduino.to_param}, valid_session
      response.should redirect_to(arduinos_url)
    end
  end

end