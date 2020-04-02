require "rails_helper"

RSpec.describe EmployeeExaminationSessionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/employee_examination_sessions").to route_to("employee_examination_sessions#index")
    end

    it "routes to #new" do
      expect(get: "/employee_examination_sessions/new").to route_to("employee_examination_sessions#new")
    end

    it "routes to #show" do
      expect(get: "/employee_examination_sessions/1").to route_to("employee_examination_sessions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/employee_examination_sessions/1/edit").to route_to("employee_examination_sessions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/employee_examination_sessions").to route_to("employee_examination_sessions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/employee_examination_sessions/1").to route_to("employee_examination_sessions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/employee_examination_sessions/1").to route_to("employee_examination_sessions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/employee_examination_sessions/1").to route_to("employee_examination_sessions#destroy", id: "1")
    end
  end
end
