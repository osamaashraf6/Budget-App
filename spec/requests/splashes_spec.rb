require 'rails_helper'

RSpec.describe "Splashes", type: :request do
  describe "GET /hello" do
    it "returns http success" do
      get "/splashes/hello"
      expect(response).to have_http_status(:success)
    end
  end

end
