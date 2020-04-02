# == Schema Information
#
# Table name: examination_sessions
#
#  id               :bigint           not null, primary key
#  date_of_exam     :date
#  examination_type :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  workplace_id     :bigint
#
require 'rails_helper'

RSpec.describe ExaminationSession, type: :model do

  subject { described_class.new(
                                examination_type: "Physical",
                                date_of_exam: Date.yesterday,
                                workplace: Workplace.new
    )
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without examination_type" do
      subject.examination_type = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without date_of_exam" do
      subject.date_of_exam = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it { should belong_to(:workplace).without_validating_presence }
    it { should have_many(:employee_examination_sessions) }
    it { should have_many(:employees) }
  end

end
