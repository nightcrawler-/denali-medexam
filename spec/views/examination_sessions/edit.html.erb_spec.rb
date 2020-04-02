require 'rails_helper'

RSpec.describe "examination_sessions/edit", type: :view do
  before(:each) do
    @examination_session = assign(:examination_session, ExaminationSession.create!(
      examination_type: "MyString",
      workplace: Workplace.create
    ))
  end

  it "renders the edit examination_session form" do
    render

    assert_select "form[action=?][method=?]", examination_session_path(@examination_session), "post" do

      assert_select "input[name=?]", "examination_session[examination_type]"

      assert_select "input[name=?]", "examination_session[workplace_id]"
    end
  end
end
