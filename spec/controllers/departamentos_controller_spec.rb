
require 'rails_helper'

RSpec.describe DepartamentosController, type: :controller do


    let(:valid_attributes) {
      skip("Add a hash of attributes valid for your model")
    }
  
    let(:invalid_attributes) {
      skip("Add a hash of attributes invalid for your model")
    }

    let(:valid_session) { {} }

    describe "GET #index" do
    it "returns a success response" do
      Departamento.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

end