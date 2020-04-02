require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      address: "MyString",
      gender: 1,
      name: "MyString",
      pn: "MyString",
      national_id: "MyString",
      workplace_id: ""
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input[name=?]", "employee[address]"

      assert_select "input[name=?]", "employee[gender]"

      assert_select "input[name=?]", "employee[name]"

      assert_select "input[name=?]", "employee[pn]"

      assert_select "input[name=?]", "employee[national_id]"

      assert_select "input[name=?]", "employee[workplace_id]"
    end
  end
end
