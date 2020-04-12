require 'rails_helper'

RSpec.describe "employee_examination_sessions/edit", type: :view do
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

    @employee = assign(:employee, Employee.create!(
      address: "MyString",
      gender: 0,
      name: "Veronica Mars",
      pn: "MyString",
      national_id: "MyString",
      workplace: @workplace,
      dob: Date.yesterday
    ))

    @examination_session = assign(:examination_session, ExaminationSession.create!(
      examination_type: "MyString",
      workplace: @workplace,
      date_of_exam: Date.yesterday,
      health_risk: "idiet"
    ))

    @employee_examination_session = assign(:employee_examination_session, EmployeeExaminationSession.create!(
      bp: 2.5,
      btw: 3.5,
      fp: "Fp",
      lmp: "Lmp",
      remarks: "Remarks",
      employee_id: @employee.id,
      examination_session_id: @examination_session.id
    ))
  end

  it "renders the edit employee_examination_session form" do
    render

    assert_select "form[action=?][method=?]", employee_examination_session_path(@employee_examination_session), "post" do

     # assert_select "input[name=?]", "employee_examination_session[bp]"

     # assert_select "input[name=?]", "employee_examination_session[btw]"

     # assert_select "input[name=?]", "employee_examination_session[fp]"

     # assert_select "input[name=?]", "employee_examination_session[lmp]"

      assert_select "input[name=?]", "employee_examination_session[remarks]"

      assert_select "select[name=?]", "employee_examination_session[employee_id]"

    end
  end
end
