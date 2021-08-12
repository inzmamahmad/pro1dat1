require "application_system_test_case"

class CommtsTest < ApplicationSystemTestCase
  setup do
    @commt = commts(:one)
  end

  test "visiting the index" do
    visit commts_url
    assert_selector "h1", text: "Commts"
  end

  test "creating a Commt" do
    visit commts_url
    click_on "New Commt"

    fill_in "Commentable", with: @commt.commentable_id
    fill_in "Commentable type", with: @commt.commentable_type
    fill_in "Content", with: @commt.content
    click_on "Create Commt"

    assert_text "Commt was successfully created"
    click_on "Back"
  end

  test "updating a Commt" do
    visit commts_url
    click_on "Edit", match: :first

    fill_in "Commentable", with: @commt.commentable_id
    fill_in "Commentable type", with: @commt.commentable_type
    fill_in "Content", with: @commt.content
    click_on "Update Commt"

    assert_text "Commt was successfully updated"
    click_on "Back"
  end

  test "destroying a Commt" do
    visit commts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Commt was successfully destroyed"
  end
end
