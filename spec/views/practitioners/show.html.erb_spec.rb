require 'rails_helper'

RSpec.describe "practitioners/show", type: :view do
  before(:each) do
    @practitioner = assign(:practitioner, Practitioner.create!(
      name: "Name",
      phone: "Phone",
      email: "me@me",
      registration: "Registration",
      address: "Address",
      fax: "Fax",
      location: "Location",
      signature: "Signature"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Registration/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Fax/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Signature/)
  end
end
