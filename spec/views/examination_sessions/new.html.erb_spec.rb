require 'rails_helper'

RSpec.describe "examination_sessions/new", type: :view do
  before(:each) do
    assign(:examination_session, ExaminationSession.new(
      examination_type: "MyString",
      workplace_id: ""
    ))
  end

  it "renders new examination_session form" do
    render

    assert_select "form[action=?][method=?]", examination_sessions_path, "post" do

      assert_select "input[name=?]", "examination_session[examination_type]"

      assert_select "input[name=?]", "examination_session[workplace_id]"
    end
  end
end
