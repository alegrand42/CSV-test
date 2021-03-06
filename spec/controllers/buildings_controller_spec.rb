require 'rails_helper'

RSpec.describe BuildingsController, type: :controller do

  describe "GET #index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #import' do
    context 'when file is valid' do
      it 'renders the page' do
        post :import, session: { file: 'test.csv' }
        expect(flash[:notice]).to match(/^Data Imported/)
      end
    end
  end
end
