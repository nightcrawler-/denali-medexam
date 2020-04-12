require 'rails_helper'

RSpec.describe "employee_examination_sessions/index", type: :view do
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

    assign(:employee_examination_sessions, [
      EmployeeExaminationSession.create!(
        bp: 2.5,
        btw: 3.5,
        fp: "Fp",
        lmp: "Lmp",
        remarks: "Remarks",
        employee: @employee,
        examination_session: @examination_session

      )])
  end

  it "renders a list of employee_examination_sessions" do
    render
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: "Fp".to_s, count: 2
    assert_select "tr>td", text: "Lmp".to_s, count: 2
    assert_select "tr>td", text: "Remarks".to_s, count: 2
  end
end
