require "application_system_test_case"

class CampaignsTest < ApplicationSystemTestCase
  setup do
    @campaign = campaigns(:one)
  end

  test "visiting the index" do
    visit campaigns_url
    assert_selector "h1", text: "Campaigns"
  end

  test "creating a Campaign" do
    visit campaigns_url
    click_on "New Campaign"

    fill_in "Content", with: @campaign.content
    fill_in "End date", with: @campaign.end_date
    fill_in "Photo", with: @campaign.photo
    fill_in "Start date", with: @campaign.start_date
    fill_in "Title", with: @campaign.title
    click_on "Create Campaign"

    assert_text "Campaign was successfully created"
    click_on "Back"
  end

  test "updating a Campaign" do
    visit campaigns_url
    click_on "Edit", match: :first

    fill_in "Content", with: @campaign.content
    fill_in "End date", with: @campaign.end_date
    fill_in "Photo", with: @campaign.photo
    fill_in "Start date", with: @campaign.start_date
    fill_in "Title", with: @campaign.title
    click_on "Update Campaign"

    assert_text "Campaign was successfully updated"
    click_on "Back"
  end

  test "destroying a Campaign" do
    visit campaigns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Campaign was successfully destroyed"
  end
end
