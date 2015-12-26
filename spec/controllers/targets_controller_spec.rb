require 'rails_helper'

RSpec.describe TargetsController, :type => :controller do
  describe 'POST #create' do
    let(:params) {
      {
        target: {
          name: Faker::Name.name,
          business: Faker::Company.name
        }
      }
    }
    it 'responds successfully with and HTTP status code of 302' do
      post :create, params
      expect(response.status).to eq 302
    end
  end

  describe 'GET #new' do
    it 'responds successfully with and HTTP status code of 200' do
      get :new
      expect(response.status).to eq 200
    end
  end

  describe 'GET #show' do
    it 'responds successfully with and HTTP status code of 200' do
      get :new
      expect(response.status).to eq 200
    end
  end
end
