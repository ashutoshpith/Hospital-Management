require 'test_helper'

class RoomtablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roomtable = roomtables(:one)
  end

  test "should get index" do
    get roomtables_url
    assert_response :success
  end

  test "should get new" do
    get new_roomtable_url
    assert_response :success
  end

  test "should create roomtable" do
    assert_difference('Roomtable.count') do
      post roomtables_url, params: { roomtable: { room_no: @roomtable.room_no, room_type: @roomtable.room_type, status: @roomtable.status } }
    end

    assert_redirected_to roomtable_url(Roomtable.last)
  end

  test "should show roomtable" do
    get roomtable_url(@roomtable)
    assert_response :success
  end

  test "should get edit" do
    get edit_roomtable_url(@roomtable)
    assert_response :success
  end

  test "should update roomtable" do
    patch roomtable_url(@roomtable), params: { roomtable: { room_no: @roomtable.room_no, room_type: @roomtable.room_type, status: @roomtable.status } }
    assert_redirected_to roomtable_url(@roomtable)
  end

  test "should destroy roomtable" do
    assert_difference('Roomtable.count', -1) do
      delete roomtable_url(@roomtable)
    end

    assert_redirected_to roomtables_url
  end
end
