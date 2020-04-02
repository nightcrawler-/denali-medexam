require 'rails_helper'

RSpec.describe "workplaces/show", type: :view do
  before(:each) do
    @workplace = assign(:workplace, Workplace.create!(
      address: "Address",
      email: "me@me",
      location: "Location",
      name: "Name",
      phone: "Phone",
      registration: "Registration",
      practitioner: Practitioner.create
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Registration/)
    expect(rendered).to match(//)
  end
end
