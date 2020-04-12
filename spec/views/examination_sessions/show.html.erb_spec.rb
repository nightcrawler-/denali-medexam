require 'rails_helper'

RSpec.describe "examination_sessions/show", type: :view do
  before(:each) do
    @examination_session = assign(:examination_session, ExaminationSession.create!(
      examination_type: "Examination Type",
      workplace: Workplace.new,
      date_of_exam: Date.yesterday,
      health_rik: "meh"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Examination Type/)
    expect(rendered).to match(//)
  end
end
