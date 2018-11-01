require 'test_helper'

class OutpatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outpatient = outpatients(:one)
  end

  test "should get index" do
    get outpatients_url
    assert_response :success
  end

  test "should get new" do
    get new_outpatient_url
    assert_response :success
  end

  test "should create outpatient" do
    assert_difference('Outpatient.count') do
      post outpatients_url, params: { outpatient: { dt: @outpatient.dt } }
    end

    assert_redirected_to outpatient_url(Outpatient.last)
  end

  test "should show outpatient" do
    get outpatient_url(@outpatient)
    assert_response :success
  end

  test "should get edit" do
    get edit_outpatient_url(@outpatient)
    assert_response :success
  end

  test "should update outpatient" do
    patch outpatient_url(@outpatient), params: { outpatient: { dt: @outpatient.dt } }
    assert_redirected_to outpatient_url(@outpatient)
  end

  test "should destroy outpatient" do
    assert_difference('Outpatient.count', -1) do
      delete outpatient_url(@outpatient)
    end

    assert_redirected_to outpatients_url
  end
end
