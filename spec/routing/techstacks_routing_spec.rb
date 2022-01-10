require "rails_helper"

RSpec.describe TechstacksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/techstacks").to route_to("techstacks#index")
    end

    it "routes to #new" do
      expect(get: "/techstacks/new").to route_to("techstacks#new")
    end

    it "routes to #show" do
      expect(get: "/techstacks/1").to route_to("techstacks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/techstacks/1/edit").to route_to("techstacks#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/techstacks").to route_to("techstacks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/techstacks/1").to route_to("techstacks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/techstacks/1").to route_to("techstacks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/techstacks/1").to route_to("techstacks#destroy", id: "1")
    end
  end
end
