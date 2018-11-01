require "application_system_test_case"

class LabtablesTest < ApplicationSystemTestCase
  setup do
    @labtable = labtables(:one)
  end

  test "visiting the index" do
    visit labtables_url
    assert_selector "h1", text: "Labtables"
  end

  test "creating a Labtable" do
    visit labtables_url
    click_on "New Labtable"

    fill_in "Amount", with: @labtable.amount
    fill_in "Category", with: @labtable.category
    fill_in "Dt", with: @labtable.dt
    fill_in "Pid", with: @labtable.pid
    click_on "Create Labtable"

    assert_text "Labtable was successfully created"
    click_on "Back"
  end

  test "updating a Labtable" do
    visit labtables_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @labtable.amount
    fill_in "Category", with: @labtable.category
    fill_in "Dt", with: @labtable.dt
    fill_in "Pid", with: @labtable.pid
    click_on "Update Labtable"

    assert_text "Labtable was successfully updated"
    click_on "Back"
  end

  test "destroying a Labtable" do
    visit labtables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Labtable was successfully destroyed"
  end
end
