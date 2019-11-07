require "application_system_test_case"

class WordlistsTest < ApplicationSystemTestCase
  setup do
    @wordlist = wordlists(:one)
  end

  test "visiting the index" do
    visit wordlists_url
    assert_selector "h1", text: "Wordlists"
  end

  test "creating a Wordlist" do
    visit wordlists_url
    click_on "New Wordlist"

    fill_in "Category", with: @wordlist.category_id
    fill_in "Language", with: @wordlist.language
    fill_in "Translate language", with: @wordlist.translate_language
    click_on "Create Wordlist"

    assert_text "Wordlist was successfully created"
    click_on "Back"
  end

  test "updating a Wordlist" do
    visit wordlists_url
    click_on "Edit", match: :first

    fill_in "Category", with: @wordlist.category_id
    fill_in "Language", with: @wordlist.language
    fill_in "Translate language", with: @wordlist.translate_language
    click_on "Update Wordlist"

    assert_text "Wordlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Wordlist" do
    visit wordlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wordlist was successfully destroyed"
  end
end
