require 'rails_helper'

RSpec.describe "examination_sessions/index", type: :view do
  before(:each) do
    assign(:examination_sessions, [
      ExaminationSession.create!(
        examination_type: "Examination Type",
        workplace_id: ""
      ),
      ExaminationSession.create!(
        examination_type: "Examination Type",
        workplace_id: ""
      )
    ])
  end

  it "renders a list of examination_sessions" do
    render
    assert_select "tr>td", text: "Examination Type".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
