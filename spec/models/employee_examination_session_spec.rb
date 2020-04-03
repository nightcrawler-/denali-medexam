# == Schema Information
#
# Table name: employee_examination_sessions
#
#  id                     :bigint           not null, primary key
#  bp                     :float
#  btw                    :float
#  fp                     :string
#  lmp                    :string
#  remarks                :string           default("PHYSICALLY FIT")
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  employee_id            :bigint
#  examination_session_id :bigint
#
require 'rails_helper'

RSpec.describe EmployeeExaminationSession, type: :model do

  let(:employee) {
                  Employee.create(
                    gender: "male",
                    name: "James",
                    national_id: "189943734",
                    dob: Date.yesterday,
                    workplace: Workplace.new
                 )
               }

  let(:examination_session) { 
                  ExaminationSession.create(
                    workplace: Workplace.new,
                    examination_type: "GE",
                    date_of_exam: Date.yesterday
                  )
   }

  subject {described_class.new(remarks: "Good girl", employee: employee, examination_session: examination_session)}

  describe "Validations" do

    it "should be valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "should be valid without remarks" do 
      subject.remarks = nil
      expect(subject).to_not be_valid
    end

    it "should not have duplicate employee/examination session combinations" do
      subject.save!
      expect(subject).to_not be_valid
    end

  end

  describe "Associations" do
    it { should belong_to(:employee)}
    it { should belong_to(:examination_session)}
  end

end
