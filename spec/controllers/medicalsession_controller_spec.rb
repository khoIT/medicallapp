require 'rails_helper'

describe MedicalsessionController do
  describe 'POST #session' do
    before(:each) do
      @user = FactoryGirl.create(:user)
    end
    it "responds successfully with an HTTP 200 status code" do
      sign_in @user
      post :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
