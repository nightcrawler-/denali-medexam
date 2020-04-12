require 'rails_helper'

RSpec.describe "practitioners/edit", type: :view do
  before(:each) do
    @practitioner = assign(:practitioner, Practitioner.create!(
      name: "MyString",
      phone: "MyString",
      email: "me@me",
      registration: "MyString",
      address: "MyString",
      fax: "MyString",
      location: "MyString",
      signature: "MyString"
    ))
  end

  it "renders the edit practitioner form" do
    render

    assert_select "form[action=?][method=?]", practitioner_path(@practitioner), "post" do

      assert_select "input[name=?]", "practitioner[name]"

      assert_select "input[name=?]", "practitioner[phone]"

      assert_select "input[name=?]", "practitioner[email]"

      assert_select "input[name=?]", "practitioner[registration]"

      assert_select "input[name=?]", "practitioner[address]"

      assert_select "input[name=?]", "practitioner[fax]"

      assert_select "input[name=?]", "practitioner[location]"
    end
  end
end
