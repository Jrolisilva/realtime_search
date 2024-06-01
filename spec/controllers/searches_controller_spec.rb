require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid parameters' do
      let(:valid_attributes) { { term: 'test' } }

      it 'creates a new Search' do
        expect do
          post :create, params: { search: valid_attributes }
        end.to change(Search, :count).by(1)
      end

      it 'redirects to the root_path' do
        post :create, params: { search: valid_attributes }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'with invalid parameters' do
      let(:invalid_attributes) { { term: '' } }

      it 'does not create a new Search' do
        expect do
          post :create, params: { search: invalid_attributes }
        end.not_to change(Search, :count)
      end

      it 'redirects to the root_path' do
        post :create, params: { search: invalid_attributes }
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
