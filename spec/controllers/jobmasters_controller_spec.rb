require 'rails_helper'

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

RSpec.describe JobmastersController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Jobmaster. As you add validations to Jobmaster, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # JobmastersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all jobmasters as @jobmasters" do
      jobmaster = Jobmaster.create! valid_attributes
      get :index_old, {}, valid_session
      expect(assigns(:jobmasters)).to eq([jobmaster])
    end
  end

  describe "GET #show" do
    it "assigns the requested jobmaster as @jobmaster" do
      jobmaster = Jobmaster.create! valid_attributes
      get :send_kairan_view, {:id => jobmaster.to_param}, valid_session
      expect(assigns(:jobmaster)).to eq(jobmaster)
    end
  end

  describe "GET #new" do
    it "assigns a new jobmaster as @jobmaster" do
      get :new, {}, valid_session
      expect(assigns(:jobmaster)).to be_a_new(Jobmaster)
    end
  end

  describe "GET #edit" do
    it "assigns the requested jobmaster as @jobmaster" do
      jobmaster = Jobmaster.create! valid_attributes
      get :edit, {:id => jobmaster.to_param}, valid_session
      expect(assigns(:jobmaster)).to eq(jobmaster)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Jobmaster" do
        expect {
          post :create, {:jobmaster => valid_attributes}, valid_session
        }.to change(Jobmaster, :count).by(1)
      end

      it "assigns a newly created jobmaster as @jobmaster" do
        post :create, {:jobmaster => valid_attributes}, valid_session
        expect(assigns(:jobmaster)).to be_a(Jobmaster)
        expect(assigns(:jobmaster)).to be_persisted
      end

      it "redirects to the created jobmaster" do
        post :create, {:jobmaster => valid_attributes}, valid_session
        expect(response).to redirect_to(Jobmaster.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved jobmaster as @jobmaster" do
        post :create, {:jobmaster => invalid_attributes}, valid_session
        expect(assigns(:jobmaster)).to be_a_new(Jobmaster)
      end

      it "re-renders the 'new' template" do
        post :create, {:jobmaster => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested jobmaster" do
        jobmaster = Jobmaster.create! valid_attributes
        put :update, {:id => jobmaster.to_param, :jobmaster => new_attributes}, valid_session
        jobmaster.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested jobmaster as @jobmaster" do
        jobmaster = Jobmaster.create! valid_attributes
        put :update, {:id => jobmaster.to_param, :jobmaster => valid_attributes}, valid_session
        expect(assigns(:jobmaster)).to eq(jobmaster)
      end

      it "redirects to the jobmaster" do
        jobmaster = Jobmaster.create! valid_attributes
        put :update, {:id => jobmaster.to_param, :jobmaster => valid_attributes}, valid_session
        expect(response).to redirect_to(jobmaster)
      end
    end

    context "with invalid params" do
      it "assigns the jobmaster as @jobmaster" do
        jobmaster = Jobmaster.create! valid_attributes
        put :update, {:id => jobmaster.to_param, :jobmaster => invalid_attributes}, valid_session
        expect(assigns(:jobmaster)).to eq(jobmaster)
      end

      it "re-renders the 'edit' template" do
        jobmaster = Jobmaster.create! valid_attributes
        put :update, {:id => jobmaster.to_param, :jobmaster => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested jobmaster" do
      jobmaster = Jobmaster.create! valid_attributes
      expect {
        delete :destroy, {:id => jobmaster.to_param}, valid_session
      }.to change(Jobmaster, :count).by(-1)
    end

    it "redirects to the jobmasters list" do
      jobmaster = Jobmaster.create! valid_attributes
      delete :destroy, {:id => jobmaster.to_param}, valid_session
      expect(response).to redirect_to(jobmasters_url)
    end
  end

end