# == Schema Information
#
# Table name: employee_examination_sessions
#
#  id          :bigint           not null, primary key
#  bp          :float
#  btw         :float
#  fp          :string
#  lmp         :string
#  remarks     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :bigint
#  session_id  :bigint
#
require 'rails_helper'

RSpec.describe EmployeeExaminationSession, type: :model do

  subject {described_class.new(remarks: "Good girl", employee: Employee.new, session: Session.new)}

  describe "Validations" do

    it "should be valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "should be valid without remarks" do 
      subject.remarks = nil
      expect(subject).to be_valid
    end

  end

  describe "Associations" do
    it { should belong_to(:employee)}
    it { should belong_to(:examination_session)}
  end

end
