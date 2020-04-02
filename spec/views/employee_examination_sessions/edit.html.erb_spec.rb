require 'rails_helper'

RSpec.describe "employee_examination_sessions/edit", type: :view do
  before(:each) do
    @employee_examination_session = assign(:employee_examination_session, EmployeeExaminationSession.create!(
      bp: 1.5,
      btw: 1.5,
      fp: "MyString",
      lmp: "MyString",
      remarks: "MyString",
      employee: Employee.new,
      examination_session: ExaminationSession.new

    ))
  end

  it "renders the edit employee_examination_session form" do
    render

    assert_select "form[action=?][method=?]", employee_examination_session_path(@employee_examination_session), "post" do

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
