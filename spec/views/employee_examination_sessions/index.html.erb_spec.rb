require 'rails_helper'

RSpec.describe "employee_examination_sessions/index", type: :view do
  before(:each) do
    assign(:employee_examination_sessions, [
      EmployeeExaminationSession.create!(
        bp: 2.5,
        btw: 3.5,
        fp: "Fp",
        lmp: "Lmp",
        remarks: "Remarks",
        employee_id: "",
        session_id: ""
      ),
      EmployeeExaminationSession.create!(
        bp: 2.5,
        btw: 3.5,
        fp: "Fp",
        lmp: "Lmp",
        remarks: "Remarks",
        employee_id: "",
        session_id: ""
      )
    ])
  end

  it "renders a list of employee_examination_sessions" do
    render
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: "Fp".to_s, count: 2
    assert_select "tr>td", text: "Lmp".to_s, count: 2
    assert_select "tr>td", text: "Remarks".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
