require "application_system_test_case"

class DoctortablesTest < ApplicationSystemTestCase
  setup do
    @doctortable = doctortables(:one)
  end

  test "visiting the index" do
    visit doctortables_url
    assert_selector "h1", text: "Doctortables"
  end

  test "creating a Doctortable" do
    visit doctortables_url
    click_on "New Doctortable"

    fill_in "Doctor Name", with: @doctortable.doctor_name
    fill_in "Doctor Sp", with: @doctortable.doctor_sp
    click_on "Create Doctortable"

    assert_text "Doctortable was successfully created"
    click_on "Back"
  end

  test "updating a Doctortable" do
    visit doctortables_url
    click_on "Edit", match: :first

    fill_in "Doctor Name", with: @doctortable.doctor_name
    fill_in "Doctor Sp", with: @doctortable.doctor_sp
    click_on "Update Doctortable"

    assert_text "Doctortable was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctortable" do
    visit doctortables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctortable was successfully destroyed"
  end
end
