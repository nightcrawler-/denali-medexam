require 'rails_helper'

RSpec.describe "employee_examination_sessions/show", type: :view do
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
      employee: @employee,
      examination_session: @examination_session
    ))
  end

  it "renders attributes in the DOSH 11" do
    render
    expect(rendered).to match("VERONICA MARS")
    expect(rendered).to match("DOSH 11")
    expect(rendered).to match("she is fit")
    expect(rendered).to match("MyString")
  end
end
