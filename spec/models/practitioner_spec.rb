require 'rails_helper'

RSpec.describe Practitioner, type: :model do

  subject { described_class.new }

  it "is valid with valid attributes" do
    
    subject.name = "Jane"
    subject.email = "Me"
    subject.registration = "woah"
    subject.location = "nyef"
    subject.address = "miau"

    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    practitioner = Practitioner.new(name: nil)
    expect(practitioner).to_not be_valid
  end 

  it "is not valid without an email" do
    practitioner = Practitioner.new(email: nil)
    expect(practitioner).to_not be_valid
  end 

  it "is not valid without a registration" do
    practitioner = Practitioner.new(registration: nil)
    expect(practitioner).to_not be_valid
  end 

  it "is not valid without an address" do
    practitioner = Practitioner.new(address: nil)
    expect(practitioner).to_not be_valid
  end 

  it "is not valid without a location" do
  practitioner = Practitioner.new(location: nil)
  expect(practitioner).to_not be_valid
  end 

end
