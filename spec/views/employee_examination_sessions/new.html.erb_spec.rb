require 'rails_helper'

RSpec.describe "employee_examination_sessions/new", type: :view do
  before(:each) do
    assign(:employee_examination_session, EmployeeExaminationSession.new(
      bp: 1.5,
      btw: 1.5,
      fp: "MyString",
      lmp: "MyString",
      remarks: "MyString",
      employee_id: "",
      session_id: ""
    ))
  end

  it "renders new employee_examination_session form" do
    render

    assert_select "form[action=?][method=?]", employee_examination_sessions_path, "post" do

      assert_select "input[name=?]", "employee_examination_session[bp]"

      assert_select "input[name=?]", "employee_examination_session[btw]"

      assert_select "input[name=?]", "employee_examination_session[fp]"

      assert_select "input[name=?]", "employee_examination_session[lmp]"

      assert_select "input[name=?]", "employee_examination_session[remarks]"

      assert_select "input[name=?]", "employee_examination_session[employee_id]"

      assert_select "input[name=?]", "employee_examination_session[session_id]"
    end
  end
end
