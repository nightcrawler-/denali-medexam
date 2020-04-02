require 'rails_helper'

RSpec.describe "workplaces/index", type: :view do
  before(:each) do
    assign(:workplaces, [
      Workplace.create!(
        address: "MyString",
        email: "me2@gmail.com",
        location: "MyString",
        name: "MyString",
        phone: "MyString",
        registration: "MyString",
        practitioner: Practitioner.create!  
      ),
      Workplace.create!(
        address: "MyString",
        email: "me@gmail.com",
        location: "MyString",
        name: "MyStrinXg",
        phone: "MyString",
        registration: "MyString",
        practitioner: Practitioner.create! 
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
