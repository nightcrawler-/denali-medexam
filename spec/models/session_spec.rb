# == Schema Information
#
# Table name: sessions
#
#  id          :bigint           not null, primary key
#  bp          :float
#  bwt         :float
#  exam_done   :string
#  fp          :string
#  lmp         :string
#  note        :string
#  p           :integer
#  remarks     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :bigint
#
require 'rails_helper'

RSpec.describe Session, type: :model do

  subject { described_class.new(
                                exam_done: "Physical",
                                remarks: "Fit",
                                employee: Employee.new
    )
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without exam_done" do
      subject.exam_done = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without remarks" do
      subject.remarks = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it { should belong_to(:employee).without_validating_presence }
  end

end
