require 'rails_helper'

describe SessionController do
  describte 'POST #session' do
    it "responds successfully with an HTTP 200 status code" do
      post :show
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the drug indication templte"do
      get :drug_list
      expect(response).to render_template("drug_list")
    end
  end
end
end
