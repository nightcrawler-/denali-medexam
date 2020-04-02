require 'rails_helper'

RSpec.describe "practitioners/index", type: :view do
  before(:each) do
    assign(:practitioners, [
      Practitioner.create!(
        name: "Name",
        phone: "Phone",
        email: "Email",
        registration: "Registration",
        address: "Address",
        fax: "Fax",
        location: "Location",
        signature: "Signature"
      ),
      Practitioner.create!(
        name: "Name",
        phone: "Phone",
        email: "Email",
        registration: "Registration",
        address: "Address",
        fax: "Fax",
        location: "Location",
        signature: "Signature"
      )
    ])
  end

  it "renders a list of practitioners" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Registration".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Fax".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Signature".to_s, count: 2
  end
end
