require "rails_helper"

RSpec.describe CloudbitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cloudbits").to route_to("cloudbits#index")
    end

    it "routes to #new" do
      expect(:get => "/cloudbits/new").to route_to("cloudbits#new")
    end

    it "routes to #show" do
      expect(:get => "/cloudbits/1").to route_to("cloudbits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cloudbits/1/edit").to route_to("cloudbits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cloudbits").to route_to("cloudbits#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cloudbits/1").to route_to("cloudbits#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cloudbits/1").to route_to("cloudbits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cloudbits/1").to route_to("cloudbits#destroy", :id => "1")
    end

  end
end
