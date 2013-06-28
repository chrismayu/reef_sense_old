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

describe EquipmentController do

  # This should return the minimal set of attributes required to create a valid
  # Equipment. As you add validations to Equipment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "description" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EquipmentController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all equipment as @equipment" do
      equipment = Equipment.create! valid_attributes
      get :index, {}, valid_session
      assigns(:equipment).should eq([equipment])
    end
  end

  describe "GET show" do
    it "assigns the requested equipment as @equipment" do
      equipment = Equipment.create! valid_attributes
      get :show, {:id => equipment.to_param}, valid_session
      assigns(:equipment).should eq(equipment)
    end
  end

  describe "GET new" do
    it "assigns a new equipment as @equipment" do
      get :new, {}, valid_session
      assigns(:equipment).should be_a_new(Equipment)
    end
  end

  describe "GET edit" do
    it "assigns the requested equipment as @equipment" do
      equipment = Equipment.create! valid_attributes
      get :edit, {:id => equipment.to_param}, valid_session
      assigns(:equipment).should eq(equipment)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Equipment" do
        expect {
          post :create, {:equipment => valid_attributes}, valid_session
        }.to change(Equipment, :count).by(1)
      end

      it "assigns a newly created equipment as @equipment" do
        post :create, {:equipment => valid_attributes}, valid_session
        assigns(:equipment).should be_a(Equipment)
        assigns(:equipment).should be_persisted
      end

      it "redirects to the created equipment" do
        post :create, {:equipment => valid_attributes}, valid_session
        response.should redirect_to(Equipment.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved equipment as @equipment" do
        # Trigger the behavior that occurs when invalid params are submitted
        Equipment.any_instance.stub(:save).and_return(false)
        post :create, {:equipment => { "description" => "invalid value" }}, valid_session
        assigns(:equipment).should be_a_new(Equipment)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Equipment.any_instance.stub(:save).and_return(false)
        post :create, {:equipment => { "description" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested equipment" do
        equipment = Equipment.create! valid_attributes
        # Assuming there are no other equipment in the database, this
        # specifies that the Equipment created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Equipment.any_instance.should_receive(:update_attributes).with({ "description" => "MyText" })
        put :update, {:id => equipment.to_param, :equipment => { "description" => "MyText" }}, valid_session
      end

      it "assigns the requested equipment as @equipment" do
        equipment = Equipment.create! valid_attributes
        put :update, {:id => equipment.to_param, :equipment => valid_attributes}, valid_session
        assigns(:equipment).should eq(equipment)
      end

      it "redirects to the equipment" do
        equipment = Equipment.create! valid_attributes
        put :update, {:id => equipment.to_param, :equipment => valid_attributes}, valid_session
        response.should redirect_to(equipment)
      end
    end

    describe "with invalid params" do
      it "assigns the equipment as @equipment" do
        equipment = Equipment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Equipment.any_instance.stub(:save).and_return(false)
        put :update, {:id => equipment.to_param, :equipment => { "description" => "invalid value" }}, valid_session
        assigns(:equipment).should eq(equipment)
      end

      it "re-renders the 'edit' template" do
        equipment = Equipment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Equipment.any_instance.stub(:save).and_return(false)
        put :update, {:id => equipment.to_param, :equipment => { "description" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested equipment" do
      equipment = Equipment.create! valid_attributes
      expect {
        delete :destroy, {:id => equipment.to_param}, valid_session
      }.to change(Equipment, :count).by(-1)
    end

    it "redirects to the equipment list" do
      equipment = Equipment.create! valid_attributes
      delete :destroy, {:id => equipment.to_param}, valid_session
      response.should redirect_to(equipment_index_url)
    end
  end

end
