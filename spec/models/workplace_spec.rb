# == Schema Information
#
# Table name: workplaces
#
#  id              :bigint           not null, primary key
#  address         :string
#  email           :string
#  location        :string
#  name            :string
#  phone           :string
#  registration    :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  practitioner_id :bigint
#
require 'rails_helper'

RSpec.describe Workplace, type: :model do

  subject { 
            described_class.new(
                                  address: "P.O. Box 1989",
                                  email: "user@me.com",
                                  location: "Lavi",
                                  name: "Workplace One",
                                  phone: "072300712",
                                  registration: "ASW344",
                                  practitioner: Practitioner.create
          )
        }

  describe "Validations" do

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

=begin
    it "is not valid without an address" do
      subject.address = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do 
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a valid email" do 
      subject.email = "shebang"
      expect(subject).to_not be_valid
    end

    it "is not valid with a location" do
      subject.location = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a phone" do 
      subject.phone = nil
      expect(subject).to_not be_valid
    end

    it "is not valid with a registration" do
      subject.registration = nil
      expect(subject).to_not be_valid
    end
=end  

  end

  describe "Associations" do
    it { should belong_to(:practitioner) }
    it { should have_many(:employees) }
    it { should have_many(:examination_sessions )}
  end

end
