require "application_system_test_case"

class BillsTest < ApplicationSystemTestCase
  setup do
    @bill = bills(:one)
  end

  test "visiting the index" do
    visit bills_url
    assert_selector "h1", text: "Bills"
  end

  test "creating a Bill" do
    visit bills_url
    click_on "New Bill"

    fill_in "Doctor Charge", with: @bill.doctor_charge
    fill_in "Medicine Charge", with: @bill.medicine_charge
    fill_in "No Day", with: @bill.no_day
    fill_in "Opteration Charge", with: @bill.opteration_charge
    fill_in "Room Charge", with: @bill.room_charge
    click_on "Create Bill"

    assert_text "Bill was successfully created"
    click_on "Back"
  end

  test "updating a Bill" do
    visit bills_url
    click_on "Edit", match: :first

    fill_in "Doctor Charge", with: @bill.doctor_charge
    fill_in "Medicine Charge", with: @bill.medicine_charge
    fill_in "No Day", with: @bill.no_day
    fill_in "Opteration Charge", with: @bill.opteration_charge
    fill_in "Room Charge", with: @bill.room_charge
    click_on "Update Bill"

    assert_text "Bill was successfully updated"
    click_on "Back"
  end

  test "destroying a Bill" do
    visit bills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bill was successfully destroyed"
  end
end
