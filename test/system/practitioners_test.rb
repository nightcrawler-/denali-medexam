require "application_system_test_case"

class PractitionersTest < ApplicationSystemTestCase
  setup do
    @practitioner = practitioners(:one)
  end

  test "visiting the index" do
    visit practitioners_url
    assert_selector "h1", text: "Practitioners"
  end

  test "creating a Practitioner" do
    visit practitioners_url
    click_on "New Practitioner"

    fill_in "Address", with: @practitioner.address
    fill_in "Email", with: @practitioner.email
    fill_in "Fax", with: @practitioner.fax
    fill_in "Location", with: @practitioner.location
    fill_in "Name", with: @practitioner.name
    fill_in "Registration", with: @practitioner.registration
    fill_in "Signature", with: @practitioner.signature
    click_on "Create Practitioner"

    assert_text "Practitioner was successfully created"
    click_on "Back"
  end

  test "updating a Practitioner" do
    visit practitioners_url
    click_on "Edit", match: :first

    fill_in "Address", with: @practitioner.address
    fill_in "Email", with: @practitioner.email
    fill_in "Fax", with: @practitioner.fax
    fill_in "Location", with: @practitioner.location
    fill_in "Name", with: @practitioner.name
    fill_in "Registration", with: @practitioner.registration
    fill_in "Signature", with: @practitioner.signature
    click_on "Update Practitioner"

    assert_text "Practitioner was successfully updated"
    click_on "Back"
  end

  test "destroying a Practitioner" do
    visit practitioners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Practitioner was successfully destroyed"
  end
end
