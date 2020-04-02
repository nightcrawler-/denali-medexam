require "rails_helper"

RSpec.describe ExaminationSessionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/examination_sessions").to route_to("examination_sessions#index")
    end

    it "routes to #new" do
      expect(get: "/examination_sessions/new").to route_to("examination_sessions#new")
    end

    it "routes to #show" do
      expect(get: "/examination_sessions/1").to route_to("examination_sessions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/examination_sessions/1/edit").to route_to("examination_sessions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/examination_sessions").to route_to("examination_sessions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/examination_sessions/1").to route_to("examination_sessions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/examination_sessions/1").to route_to("examination_sessions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/examination_sessions/1").to route_to("examination_sessions#destroy", id: "1")
    end
  end
end
