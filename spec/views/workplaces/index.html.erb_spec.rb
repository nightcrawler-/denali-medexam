require 'rails_helper'

RSpec.describe "workplaces/index", type: :view do
  before(:each) do
    assign(:workplaces, [
      Workplace.create!(
        address: "Address",
        email: "Email",
        location: "Location",
        name: "Name",
        phone: "Phone",
        registration: "Registration",
        practitioner_id: ""
      ),
      Workplace.create!(
        address: "Address",
        email: "Email",
        location: "Location",
        name: "Name",
        phone: "Phone",
        registration: "Registration",
        practitioner_id: ""
      )
    ])
  end

  it "renders a list of workplaces" do
    render
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Registration".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
