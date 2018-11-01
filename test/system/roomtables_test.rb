require "application_system_test_case"

class RoomtablesTest < ApplicationSystemTestCase
  setup do
    @roomtable = roomtables(:one)
  end

  test "visiting the index" do
    visit roomtables_url
    assert_selector "h1", text: "Roomtables"
  end

  test "creating a Roomtable" do
    visit roomtables_url
    click_on "New Roomtable"

    fill_in "Room No", with: @roomtable.room_no
    fill_in "Room Type", with: @roomtable.room_type
    fill_in "Status", with: @roomtable.status
    click_on "Create Roomtable"

    assert_text "Roomtable was successfully created"
    click_on "Back"
  end

  test "updating a Roomtable" do
    visit roomtables_url
    click_on "Edit", match: :first

    fill_in "Room No", with: @roomtable.room_no
    fill_in "Room Type", with: @roomtable.room_type
    fill_in "Status", with: @roomtable.status
    click_on "Update Roomtable"

    assert_text "Roomtable was successfully updated"
    click_on "Back"
  end

  test "destroying a Roomtable" do
    visit roomtables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roomtable was successfully destroyed"
  end
end
