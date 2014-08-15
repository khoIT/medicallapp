require 'rails_helper'

describe MedicineController, :type => :controller do
  describe 'GET #drug_list' do
    before(:each) do
      @user = FactoryGirl.create(:user)
    end

    it "list out medicine list with an HTTP 200 status code" do
      #sign_in @user
      get :drug_list
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the drug indication templte"do
      #sign_in @user
      get :drug_list
      expect(response).to render_template("drug_list")
    end
  end
end
