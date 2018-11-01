require 'test_helper'

class InpatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inpatient = inpatients(:one)
  end

  test "should get index" do
    get inpatients_url
    assert_response :success
  end

  test "should get new" do
    get new_inpatient_url
    assert_response :success
  end

  test "should create inpatient" do
    assert_difference('Inpatient.count') do
      post inpatients_url, params: { inpatient: { advance: @inpatient.advance, date_of_add: @inpatient.date_of_add, date_of_dis: @inpatient.date_of_dis } }
    end

    assert_redirected_to inpatient_url(Inpatient.last)
  end

  test "should show inpatient" do
    get inpatient_url(@inpatient)
    assert_response :success
  end

  test "should get edit" do
    get edit_inpatient_url(@inpatient)
    assert_response :success
  end

  test "should update inpatient" do
    patch inpatient_url(@inpatient), params: { inpatient: { advance: @inpatient.advance, date_of_add: @inpatient.date_of_add, date_of_dis: @inpatient.date_of_dis } }
    assert_redirected_to inpatient_url(@inpatient)
  end

  test "should destroy inpatient" do
    assert_difference('Inpatient.count', -1) do
      delete inpatient_url(@inpatient)
    end

    assert_redirected_to inpatients_url
  end
end
