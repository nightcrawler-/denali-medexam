require 'test_helper'

class PractitionersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practitioner = practitioners(:one)
  end

  test "should get index" do
    get practitioners_url
    assert_response :success
  end

  test "should get new" do
    get new_practitioner_url
    assert_response :success
  end

  test "should create practitioner" do
    assert_difference('Practitioner.count') do
      post practitioners_url, params: { practitioner: { address: @practitioner.address, email: @practitioner.email, fax: @practitioner.fax, location: @practitioner.location, name: @practitioner.name, registration: @practitioner.registration, signature: @practitioner.signature } }
    end

    assert_redirected_to practitioner_url(Practitioner.last)
  end

  test "should show practitioner" do
    get practitioner_url(@practitioner)
    assert_response :success
  end

  test "should get edit" do
    get edit_practitioner_url(@practitioner)
    assert_response :success
  end

  test "should update practitioner" do
    patch practitioner_url(@practitioner), params: { practitioner: { address: @practitioner.address, email: @practitioner.email, fax: @practitioner.fax, location: @practitioner.location, name: @practitioner.name, registration: @practitioner.registration, signature: @practitioner.signature } }
    assert_redirected_to practitioner_url(@practitioner)
  end

  test "should destroy practitioner" do
    assert_difference('Practitioner.count', -1) do
      delete practitioner_url(@practitioner)
    end

    assert_redirected_to practitioners_url
  end
end
