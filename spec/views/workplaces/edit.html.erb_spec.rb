require 'rails_helper'

RSpec.describe "workplaces/edit", type: :view do
  before(:each) do
    @workplace = assign(:workplace, Workplace.create!(
      address: "MyString",
      email: "MyString",
      location: "MyString",
      name: "MyString",
      phone: "MyString",
      registration: "MyString",
      practitioner_id: ""
    ))
  end

  it "renders the edit workplace form" do
    render

    assert_select "form[action=?][method=?]", workplace_path(@workplace), "post" do

      assert_select "input[name=?]", "workplace[address]"

      assert_select "input[name=?]", "workplace[email]"

      assert_select "input[name=?]", "workplace[location]"

      assert_select "input[name=?]", "workplace[name]"

      assert_select "input[name=?]", "workplace[phone]"

      assert_select "input[name=?]", "workplace[registration]"

      assert_select "input[name=?]", "workplace[practitioner_id]"
    end
  end
end
