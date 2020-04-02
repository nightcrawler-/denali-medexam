# == Schema Information
#
# Table name: employees
#
#  id           :bigint           not null, primary key
#  address      :string
#  dob          :date
#  gender       :integer
#  name         :string
#  pn           :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  national_id  :string
#  workplace_id :bigint
#
require 'rails_helper'

RSpec.describe Employee, type: :model do

  subject {
    described_class.new(
                        gender: "male",
                        name: "James",
                        national_id: "189943734",
                        dob: Date.yesterday,
                        workplace: Workplace.new
    )
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without gender" do
      subject.gender = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without national_id" do
      subject.national_id = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without dob" do
      subject.dob = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it { should belong_to(:workplace) }
    it { should have_many(:employee_examination_sessions) }
  end

  describe "Behaviours" do
    it "should change with time" do
      expect(subject.age).to eq 0
    end
  end

end
