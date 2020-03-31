require 'rails_helper'

RSpec.describe Practitioner, type: :model do

  subject { described_class.new(
              name: "Jane",
              email: "Me",
              registration: "woah",
              location: "nyef",
              address: "miau")
          }

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

end
