# == Schema Information
#
# Table name: employees
#
#  id          :bigint           not null, primary key
#  address     :string
#  dob         :date
#  gender      :integer
#  name        :string
#  pn          :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  national_id :string
#
require 'rails_helper'

RSpec.describe Employee, type: :model do

  subject {
    described_class.new(
                        gender: "male",
                        name: "James",
                        national_id: "189943734",
                        dob: Date.yesterday
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
    it { should belong_to(:workplace).without_validating_presence }
  end

end
