require 'rails_helper'

RSpec.describe "Profiles", type: :request do
  describe "GET /prof" do
    it "returns http success" do
      get "/profiles/prof"
      expect(response).to have_http_status(:success)
    end
  end
end
