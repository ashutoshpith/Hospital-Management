require 'test_helper'

class DoctortablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctortable = doctortables(:one)
  end

  test "should get index" do
    get doctortables_url
    assert_response :success
  end

  test "should get new" do
    get new_doctortable_url
    assert_response :success
  end

  test "should create doctortable" do
    assert_difference('Doctortable.count') do
      post doctortables_url, params: { doctortable: { doctor_name: @doctortable.doctor_name, doctor_sp: @doctortable.doctor_sp } }
    end

    assert_redirected_to doctortable_url(Doctortable.last)
  end

  test "should show doctortable" do
    get doctortable_url(@doctortable)
    assert_response :success
  end

  test "should get edit" do
    get edit_doctortable_url(@doctortable)
    assert_response :success
  end

  test "should update doctortable" do
    patch doctortable_url(@doctortable), params: { doctortable: { doctor_name: @doctortable.doctor_name, doctor_sp: @doctortable.doctor_sp } }
    assert_redirected_to doctortable_url(@doctortable)
  end

  test "should destroy doctortable" do
    assert_difference('Doctortable.count', -1) do
      delete doctortable_url(@doctortable)
    end

    assert_redirected_to doctortables_url
  end
end
