require 'rails_helper'

RSpec.describe "Cloudbits", type: :request do
  describe "GET /cloudbits" do
    it "works! (now write some real specs)" do
      get cloudbits_path
      expect(response).to have_http_status(200)
    end
  end
end
