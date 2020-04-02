require 'rails_helper'

RSpec.describe "employee_examination_sessions/show", type: :view do
  before(:each) do
    @employee_examination_session = assign(:employee_examination_session, EmployeeExaminationSession.create!(
      bp: 2.5,
      btw: 3.5,
      fp: "Fp",
      lmp: "Lmp",
      remarks: "Remarks",
      employee_id: "",
      session_id: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/Fp/)
    expect(rendered).to match(/Lmp/)
    expect(rendered).to match(/Remarks/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
