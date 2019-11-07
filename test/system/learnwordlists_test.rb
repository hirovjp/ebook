require "application_system_test_case"

class LearnwordlistsTest < ApplicationSystemTestCase
  setup do
    @learnwordlist = learnwordlists(:one)
  end

  test "visiting the index" do
    visit learnwordlists_url
    assert_selector "h1", text: "Learnwordlists"
  end

  test "creating a Learnwordlist" do
    visit learnwordlists_url
    click_on "New Learnwordlist"

    fill_in "User", with: @learnwordlist.user_id
    fill_in "Wordlist", with: @learnwordlist.wordlist_id
    click_on "Create Learnwordlist"

    assert_text "Learnwordlist was successfully created"
    click_on "Back"
  end

  test "updating a Learnwordlist" do
    visit learnwordlists_url
    click_on "Edit", match: :first

    fill_in "User", with: @learnwordlist.user_id
    fill_in "Wordlist", with: @learnwordlist.wordlist_id
    click_on "Update Learnwordlist"

    assert_text "Learnwordlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Learnwordlist" do
    visit learnwordlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Learnwordlist was successfully destroyed"
  end
end
