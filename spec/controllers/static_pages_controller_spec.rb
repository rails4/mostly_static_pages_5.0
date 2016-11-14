require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "renders the home template" do
      get :home
      expect(response).to render_template("home")
    end
  end

  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end

    it "renders the home template" do
      get :help
      expect(response).to render_template("help")
    end
  end
end
