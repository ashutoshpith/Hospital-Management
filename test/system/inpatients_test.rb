require "application_system_test_case"

class InpatientsTest < ApplicationSystemTestCase
  setup do
    @inpatient = inpatients(:one)
  end

  test "visiting the index" do
    visit inpatients_url
    assert_selector "h1", text: "Inpatients"
  end

  test "creating a Inpatient" do
    visit inpatients_url
    click_on "New Inpatient"

    fill_in "Advance", with: @inpatient.advance
    fill_in "Date Of Add", with: @inpatient.date_of_add
    fill_in "Date Of Dis", with: @inpatient.date_of_dis
    click_on "Create Inpatient"

    assert_text "Inpatient was successfully created"
    click_on "Back"
  end

  test "updating a Inpatient" do
    visit inpatients_url
    click_on "Edit", match: :first

    fill_in "Advance", with: @inpatient.advance
    fill_in "Date Of Add", with: @inpatient.date_of_add
    fill_in "Date Of Dis", with: @inpatient.date_of_dis
    click_on "Update Inpatient"

    assert_text "Inpatient was successfully updated"
    click_on "Back"
  end

  test "destroying a Inpatient" do
    visit inpatients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inpatient was successfully destroyed"
  end
end
