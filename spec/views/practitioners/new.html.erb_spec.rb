require 'rails_helper'

RSpec.describe "practitioners/new", type: :view do
  before(:each) do
    assign(:practitioner, Practitioner.new(
      name: "MyString",
      phone: "MyString",
      email: "MyString",
      registration: "MyString",
      address: "MyString",
      fax: "MyString",
      location: "MyString",
      signature: "MyString"
    ))
  end

  it "renders new practitioner form" do
    render

    assert_select "form[action=?][method=?]", practitioners_path, "post" do

      assert_select "input[name=?]", "practitioner[name]"

      assert_select "input[name=?]", "practitioner[phone]"

      assert_select "input[name=?]", "practitioner[email]"

      assert_select "input[name=?]", "practitioner[registration]"

      assert_select "input[name=?]", "practitioner[address]"

      assert_select "input[name=?]", "practitioner[fax]"

      assert_select "input[name=?]", "practitioner[location]"

      assert_select "input[name=?]", "practitioner[signature]"
    end
  end
end
