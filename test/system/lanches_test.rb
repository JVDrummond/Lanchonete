require "application_system_test_case"

class LanchesTest < ApplicationSystemTestCase
  setup do
    @lanch = lanches(:one)
  end

  test "visiting the index" do
    visit lanches_url
    assert_selector "h1", text: "Lanches"
  end

  test "creating a Lanche" do
    visit lanches_url
    click_on "New Lanche"

    fill_in "Lanche", with: @lanch.lanche
    click_on "Create Lanche"

    assert_text "Lanche was successfully created"
    click_on "Back"
  end

  test "updating a Lanche" do
    visit lanches_url
    click_on "Edit", match: :first

    fill_in "Lanche", with: @lanch.lanche
    click_on "Update Lanche"

    assert_text "Lanche was successfully updated"
    click_on "Back"
  end

  test "destroying a Lanche" do
    visit lanches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lanche was successfully destroyed"
  end
end
