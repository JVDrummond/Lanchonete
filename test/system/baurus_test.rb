require "application_system_test_case"

class BaurusTest < ApplicationSystemTestCase
  setup do
    @bauru = baurus(:one)
  end

  test "visiting the index" do
    visit baurus_url
    assert_selector "h1", text: "Baurus"
  end

  test "creating a Bauru" do
    visit baurus_url
    click_on "New Bauru"

    fill_in "Bauru", with: @bauru.bauru
    click_on "Create Bauru"

    assert_text "Bauru was successfully created"
    click_on "Back"
  end

  test "updating a Bauru" do
    visit baurus_url
    click_on "Edit", match: :first

    fill_in "Bauru", with: @bauru.bauru
    click_on "Update Bauru"

    assert_text "Bauru was successfully updated"
    click_on "Back"
  end

  test "destroying a Bauru" do
    visit baurus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bauru was successfully destroyed"
  end
end
