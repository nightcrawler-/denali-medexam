require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        address: "Address",
        gender: "female",
        name: "Name",
        pn: "Pn",
        national_id: "National",
        workplace: Workplace.new,
        dob: Date.yesterday
      ),
      Employee.create!(
        address: "Address",
        gender: "male",
        name: "Name",
        pn: "Pn",
        national_id: "National3",
        workplace: Workplace.new,
        dob: Date.yesterday
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "male".to_s, count: 1
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Pn".to_s, count: 2
    assert_select "tr>td", text: "National".to_s, count: 1
    assert_select "tr>td", text: "female".to_s, count: 1
  end
end
