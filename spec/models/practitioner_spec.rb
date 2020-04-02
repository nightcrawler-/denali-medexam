# == Schema Information
#
# Table name: practitioners
#
#  id           :bigint           not null, primary key
#  address      :string
#  email        :string
#  fax          :string
#  location     :string
#  name         :string
#  phone        :string
#  registration :string
#  signature    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe Practitioner, type: :model do

  subject { described_class.new(
              name: "Jane",
              email: "user@yahoo.com",
              registration: "woah",
              location: "nyef",
              address: "miau",
              phone: "072345522")
          }

  describe "Validations" do 

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end 

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end 

    it "is not valid without a valid" do
      subject.email = "nonesense email"
      expect(subject).to_not be_valid
    end 

    it "is not valid without a registration" do
      subject.registration = nil
      expect(subject).to_not be_valid
    end 

    it "is not valid without an address" do
      subject.address = nil
      expect(subject).to_not be_valid
    end 

    it "is not valid without a location" do
      subject.location = nil
      expect(subject).to_not be_valid
    end 

    it "is not valid without a phone number" do
      subject.phone = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Asscociations" do
    it { should have_many(:workplaces) }
  end
end
