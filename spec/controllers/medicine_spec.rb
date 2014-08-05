require 'rails_helper'

describe MedicineController, :type => :controller do
  describe 'GET #drug_list' do
    it "responds successfully with an HTTP 200 status code" do
      get :drug_list
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the drug indication templte"do
      get :drug_list
      expect(response).to render_template("drug_list")
    end
  end
end
