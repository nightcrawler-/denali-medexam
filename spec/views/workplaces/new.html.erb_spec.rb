require 'rails_helper'

RSpec.describe "workplaces/new", type: :view do
  before(:each) do
    assign(:workplace, Workplace.new(
      address: "MyString",
      email: "MyString",
      location: "MyString",
      name: "MyString",
      phone: "MyString",
      registration: "MyString",
      practitioner_id: "9"
    ))
  end

  it "renders new workplace form" do
    render

    assert_select "form[action=?][method=?]", workplaces_path, "post" do

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
