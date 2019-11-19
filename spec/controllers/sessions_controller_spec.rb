require 'rails_helper'

RSpec.describe SessionsController, type: :controller do


    let(:valid_attributes) {
      skip("Add a hash of attributes valid for your model")
    }
  
    let(:invalid_attributes) {
      skip("Add a hash of attributes invalid for your model")
    }

    let(:valid_session) { {} }

    describe "POST #create" do
    context "with valid params" do
      it "creates a new ServiceProvider" do
        expect {
          post :create, params: {service_provider: valid_attributes}, session: valid_session
        }.to change(ServiceProvider, :count).by(1)
      end