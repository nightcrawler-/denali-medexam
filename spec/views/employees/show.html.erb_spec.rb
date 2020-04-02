require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      address: "Address",
      gender: 2,
      name: "Name",
      pn: "Pn",
      national_id: "National",
      workplace_id: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Pn/)
    expect(rendered).to match(/National/)
    expect(rendered).to match(//)
  end
end
