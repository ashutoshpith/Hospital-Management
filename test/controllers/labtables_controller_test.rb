require 'test_helper'

class LabtablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @labtable = labtables(:one)
  end

  test "should get index" do
    get labtables_url
    assert_response :success
  end

  test "should get new" do
    get new_labtable_url
    assert_response :success
  end

  test "should create labtable" do
    assert_difference('Labtable.count') do
      post labtables_url, params: { labtable: { amount: @labtable.amount, category: @labtable.category, dt: @labtable.dt, pid: @labtable.pid } }
    end

    assert_redirected_to labtable_url(Labtable.last)
  end

  test "should show labtable" do
    get labtable_url(@labtable)
    assert_response :success
  end

  test "should get edit" do
    get edit_labtable_url(@labtable)
    assert_response :success
  end

  test "should update labtable" do
    patch labtable_url(@labtable), params: { labtable: { amount: @labtable.amount, category: @labtable.category, dt: @labtable.dt, pid: @labtable.pid } }
    assert_redirected_to labtable_url(@labtable)
  end

  test "should destroy labtable" do
    assert_difference('Labtable.count', -1) do
      delete labtable_url(@labtable)
    end

    assert_redirected_to labtables_url
  end
end
