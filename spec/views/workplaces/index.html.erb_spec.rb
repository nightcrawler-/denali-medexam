require 'rails_helper'

RSpec.describe "workplaces/index", type: :view do
  before(:each) do
    assign(:workplaces, [
      Workplace.create!(
        address: "3310",
        email: "me2@gmail.com",
        location: "Location",
        name: "Name",
        phone: "Phone",
        registration: "Registration",
        practitioner: Practitioner.new  
      ),
      Workplace.create!(
        address: "3310",
        email: "me@gmail.com",
        location: "Location",
        name: "Name2",
        phone: "Phone",
        registration: "Registration",
        practitioner: Practitioner.new 
      )
    ])
  end
=begin
  it "renders a list of workplaces" do
    render
    assert_select "tr>td", text: "3310".to_s, count: 2
    assert_select "tr>td", text: "me2@gmail.com".to_s, count: 1
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 1
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Registration".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
=end
end
