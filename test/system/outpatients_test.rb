require "application_system_test_case"

class OutpatientsTest < ApplicationSystemTestCase
  setup do
    @outpatient = outpatients(:one)
  end

  test "visiting the index" do
    visit outpatients_url
    assert_selector "h1", text: "Outpatients"
  end

  test "creating a Outpatient" do
    visit outpatients_url
    click_on "New Outpatient"

    fill_in "Dt", with: @outpatient.dt
    click_on "Create Outpatient"

    assert_text "Outpatient was successfully created"
    click_on "Back"
  end

  test "updating a Outpatient" do
    visit outpatients_url
    click_on "Edit", match: :first

    fill_in "Dt", with: @outpatient.dt
    click_on "Update Outpatient"

    assert_text "Outpatient was successfully updated"
    click_on "Back"
  end

  test "destroying a Outpatient" do
    visit outpatients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Outpatient was successfully destroyed"
  end
end
