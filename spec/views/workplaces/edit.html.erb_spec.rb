require 'rails_helper'

RSpec.describe "workplaces/edit", type: :view do
  before(:each) do

    @practitioner = Practitioner.create!(
      name: "Jeane Aiko",
      address:"123 Kansas",
      email: "one@one",
      location: "12 Kingstons",
      registration: "4554 KE",
      phone: "07230065561"
    )

    @workplace = assign(:workplace, Workplace.create!(
      address: "MyString",
      email: "me@gmail.com",
      location: "MyString",
      name: "MyString",
      phone: "MyString",
      registration: "MyString",
      practitioner_id: @practitioner.id
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

      assert_select "select[name=?]", "workplace[practitioner_id]"
    end
  end
end
