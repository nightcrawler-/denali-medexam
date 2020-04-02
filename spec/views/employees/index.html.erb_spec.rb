require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        address: "Address",
        gender: 2,
        name: "Name",
        pn: "Pn",
        national_id: "National",
        workplace_id: ""
      ),
      Employee.create!(
        address: "Address",
        gender: 2,
        name: "Name",
        pn: "Pn",
        national_id: "National",
        workplace_id: ""
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Pn".to_s, count: 2
    assert_select "tr>td", text: "National".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
